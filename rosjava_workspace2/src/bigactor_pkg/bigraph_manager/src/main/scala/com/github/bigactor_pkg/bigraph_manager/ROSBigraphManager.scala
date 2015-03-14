package com.github.bigactor_pkg.bigraph_manager

import org.ros.message.MessageListener
import org.apache.commons.logging.Log

import org.ros.node.{ConnectedNode, NodeMain, AbstractNodeMain}
import org.ros.namespace.GraphName
import edu.berkeley.eloi.bigraph.{Control, BRS, BRR, Bigraph}
import org.ros.node.topic.{Publisher, Subscriber}
import org.ros.message.MessageListener
import scala.collection.mutable.ArrayBuffer
import org.ros.concurrent.CancellableLoop
import java.util
import scala.collection.JavaConversions._
import big_actor_msgs._
import bigactors.{BIGRAPH_WITH_HOST_REQUEST, EXECUTE_BRR, BIGRAPH_REQUEST, BIGRAPH_RESPONSE}
import java.util.Properties
import edu.berkeley.eloi.bigraph.{Control, BRR, Bigraph, BRS}
import scala.collection.mutable.ArrayBuffer
import java.util._
import java.io.FileInputStream
import java.net._
import scala.collection.JavaConversions._
import scala.actors._
import scala.actors.Actor._
import scala.actors.remote._
import scala.actors.remote.RemoteActor._


class ROSBigraphManager extends AbstractNodeMain {

  override def getDefaultNodeName(): GraphName = {
    GraphName.of("bigraph_manager/ROSBigraphManager")
  }

  override def onStart(connectedNode: ConnectedNode){
    var log = connectedNode.getLog
    var bigActorsLaunched = false
    var bigraphDefined = false
    var bigraphWithHostingDefined = false
    var brrQueue = ArrayBuffer[BRR]()
    var bigraph = new edu.berkeley.eloi.bigraph.Bigraph
    var bigraphWithHosting = new edu.berkeley.eloi.bigraph.Bigraph
    var signature = new util.ArrayList[Control]()
    var signatureWithHosting = new util.ArrayList[Control]()
    var names = new util.ArrayList[String]()


    def enqueueBRR(brr: BRR){
      brrQueue += brr
    }

    def dequeueBRR: BRR = {
      val brr = brrQueue(0)
      brrQueue.trimStart(1)
      brr
    }

    def getBigraph: Bigraph = bigraph

    def getBigraphWithHosting: Bigraph = bigraphWithHosting


    def setBigraph(b: Bigraph) {
      bigraph = b
    }

    def setBigraphWithHosting(b: Bigraph) {
      bigraphWithHosting = b
    }
    
    val bigraph_manager = actor {
        val prop = new Properties
        prop.load(new FileInputStream("ROSBigraphManager.properties"))
        val managerID = Symbol(prop.getProperty("BigraphManagerID"))
        val managerPort = prop.getProperty("BigraphManagerPort").toInt
        val localhost = InetAddress.getLocalHost
        val managerIP = localhost.getHostAddress

        alive(managerPort)
        register(managerID, self)
        log.info("BigraphManager operating remotely at IP "+ managerIP + " and port "+ managerPort)
        loop{
          react{
            case EXECUTE_BRR(brr) => {
              enqueueBRR(brr)
              log.info("BRR requested: " + brr)
            }
            case BIGRAPH_REQUEST => {
              log.info("Sending bigraph to " + sender)
              sender ! BIGRAPH_RESPONSE(getBigraph)
            }
            case BIGRAPH_WITH_HOST_REQUEST => {
              log.info("Sending bigraph with host to " + sender)
              sender ! BIGRAPH_RESPONSE(getBigraphWithHosting)
            }
          }
        }
    }

    var subscriber0: Subscriber[big_actor_msgs.Bigraph] = connectedNode.newSubscriber("bigraph",big_actor_msgs.Bigraph._TYPE)
    subscriber0.addMessageListener(new MessageListener[big_actor_msgs.Bigraph]() {
      override def onNewMessage(message: big_actor_msgs.Bigraph) {
        
        for(t <- message.getSignature){
          signature.add(new Control(t,1,new Control.Active)) //TODO - assuming arity 1 is wrong. Need to be fixed.
        }
        log.info("New bigraph term: " + message.getBgm)
        log.info("New signature: " + message.getSignature)
        log.info("New link names: " + message.getNames)
        setBigraph(new Bigraph(message.getBgm +";"))
        names.addAll(message.getNames)
        bigraphDefined = true
      }
    });

    var subscriber1: Subscriber[big_actor_msgs.Bigraph] = connectedNode.newSubscriber("bigraphWithHosting",big_actor_msgs.Bigraph._TYPE)
    subscriber1.addMessageListener(new MessageListener[big_actor_msgs.Bigraph]() {
      override def onNewMessage(message: big_actor_msgs.Bigraph) {
        
        for(t <- message.getSignature){
          signatureWithHosting.add(new Control(t,1,new Control.Active)) //TODO - assuming arity 1 is wrong. Need to be fixed.
        }
        log.info("New bigraph term with hosting: " + message.getBgm)
        log.info("New signature with hosting: " + message.getSignature)
        log.info("New link names: " + message.getNames)
        setBigraphWithHosting(new Bigraph(message.getBgm +";"))
        names.addAll(message.getNames)
        bigraphWithHostingDefined = true
      }
    });

    var publisher: Publisher[std_msgs.String] = connectedNode.newPublisher("brr", std_msgs.String._TYPE)

    connectedNode.executeCancellableLoop(new CancellableLoop() {

      override def loop {
        if (brrQueue.length > 0) {
          var brrString = publisher.newMessage()
          brrString.setData(dequeueBRR.toString)
          publisher.publish(brrString)
        }
        Thread.sleep(1000)
      }
    });
  }
}
