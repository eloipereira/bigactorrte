package com.eloipereira.Bigraph

import big_actor_msgs._
import org.apache.commons.logging.Log
import com.typesafe.config.ConfigFactory

import scala.collection.JavaConversions._
import scala.collection.mutable._
import java.net.{URI, URISyntaxException}
import org.ros.address.InetAddressFactory
import org.ros.concurrent.CancellableLoop
import org.ros.message.MessageListener
import org.ros.namespace.GraphName
import org.ros.node.topic.{Publisher, Subscriber}
import org.ros.node.{AbstractNodeMain, ConnectedNode, DefaultNodeMainExecutor, NodeConfiguration, NodeMainExecutor}

import com.vividsolutions.jts.geom._
import com.vividsolutions.jts.geom.impl.CoordinateArraySequence

object BigraphDriver extends App{

	val conf = ConfigFactory.load()
	conf.checkValid(ConfigFactory.defaultReference(), "ros")
	val uri = conf.getString("ros.ros_master_uri")


	var term: String = ""
	var termWithHosting: String =""
	var signature: Buffer[String] = new scala.collection.mutable.ListBuffer[String]
	var signatureWithHosting: Buffer[String] = new scala.collection.mutable.ListBuffer[String]
	var names: Buffer[String] = new scala.collection.mutable.ListBuffer[String]
	var bigraph: edu.berkeley.eloi.bigraph.Bigraph = new edu.berkeley.eloi.bigraph.Bigraph()

	val node: AbstractNodeMain = new AbstractNodeMain {
		override def getDefaultNodeName: GraphName = GraphName.of("BigraphDriver")
		override def onStart(connectedNode: ConnectedNode): Unit ={
			val log: Log  = connectedNode.getLog()
			val sse: StructureStateEstimate = connectedNode.getTopicMessageFactory().newFromType(StructureStateEstimate._TYPE)
			val bg: Bigraph = connectedNode.getTopicMessageFactory().newFromType(Bigraph._TYPE)
			val bgWithHosting: Bigraph = connectedNode.getTopicMessageFactory().newFromType(Bigraph._TYPE)

			// Publishers

			val publisher1: Publisher[Bigraph] = connectedNode.newPublisher("bigraph", Bigraph._TYPE)
			val publisher2: Publisher[std_msgs.String] = connectedNode.newPublisher("bgm", std_msgs.String._TYPE)
			val publisher4: Publisher[std_msgs.String] = connectedNode.newPublisher("bgmWithHosting", std_msgs.String._TYPE)
			val publisher5: Publisher[Bigraph] = connectedNode.newPublisher("bigraphWithHosting", big_actor_msgs.Bigraph._TYPE)


			val subscriber: Subscriber[big_actor_msgs.StructureStateEstimate] = connectedNode.newSubscriber("sse", StructureStateEstimate._TYPE)
			subscriber.addMessageListener(new MessageListener[StructureStateEstimate] {
				override def onNewMessage(message: StructureStateEstimate): Unit = {
					log.info("SSE received \n")
					sse.setConnections(message.getConnections())
					sse.setLocations(message.getLocations())
					sse.setNetworks(message.getNetworks())
					sse.setSrcVehicleId(message.getSrcVehicleId())
					sse.setTimeStamp(message.getTimeStamp())
					sse.setVehicles(message.getVehicles())
					val bigraphAbstr: BigraphAbstraction = new BigraphAbstraction(message)
					term = bigraphAbstr.getPhysicalAbstraction().getTerm()
					termWithHosting = bigraphAbstr.getPhysicalAndHostingAbstraction().getTerm()
					bigraph = new edu.berkeley.eloi.bigraph.Bigraph(term)
					log.info("Bigraph term: "+ term)
					log.info("Bigraph term with hosting: "+termWithHosting)
					signature=bigraphAbstr.getSignature()
					signatureWithHosting=bigraphAbstr.getSignatureWithHosting()
					names = bigraphAbstr.getNames()
					bg.setBgm(term)
					bg.setNames(names)
					bg.setSignature(signature)
					bgWithHosting.setBgm(termWithHosting)
					bgWithHosting.setNames(names)
					bgWithHosting.setSignature(signatureWithHosting)
				}
				})

connectedNode.executeCancellableLoop(new CancellableLoop {
	override def loop(): Unit = {
		val str: std_msgs.String = publisher2.newMessage()
		str.setData(term)
		publisher2.publish(str)
		val str1: std_msgs.String = publisher4.newMessage()
		publisher4.publish(str1)
		publisher1.publish(bg)
		publisher5.publish(bgWithHosting)
		Thread.sleep(1000)
	}
	})
super.onStart(connectedNode)
}
}

val executor: NodeMainExecutor = DefaultNodeMainExecutor.newDefault
executor.execute(node, setupConfiguration)
def getMasterUri: URI  = {
	try new URI(uri)
	catch {
		case e : URISyntaxException => null
	}
}
def setupConfiguration: NodeConfiguration = NodeConfiguration.newPublic(InetAddressFactory.newNonLoopback.getHostName,getMasterUri)

}