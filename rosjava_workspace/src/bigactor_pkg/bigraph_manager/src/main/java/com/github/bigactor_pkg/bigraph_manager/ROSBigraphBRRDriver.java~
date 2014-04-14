package com.github.bigactor_pkg.bigraph_manager;

import big_actor_msgs.*;
import big_actor_msgs.Location;
import edu.berkeley.eloi.bigraph.*;
import org.antlr.runtime.RecognitionException;
import org.apache.commons.logging.Log;
import org.ros.concurrent.CancellableLoop;
import org.ros.message.MessageListener;
import org.ros.namespace.GraphName;
import org.ros.node.AbstractNodeMain;
import org.ros.node.ConnectedNode;
import org.ros.node.topic.Publisher;
import org.ros.node.topic.Subscriber;
import java.lang.String;
import com.vividsolutions.jts.geom.*;
import com.vividsolutions.jts.geom.impl.CoordinateArraySequence;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Node publishing a bigraph as a bgm term.
 *
 * @author eloi@berkeley.edu (Eloi Pereira)
 */
public class BigraphHandle extends AbstractNodeMain {
    private String term = "";
    private String termWithHosting ="";
    private List<String> signature = new ArrayList<String>();
    private List<String> signatureWithHosting = new ArrayList();
    private List<String> names = new ArrayList<String>();
    private edu.berkeley.eloi.bigraph.Bigraph bigraph = new edu.berkeley.eloi.bigraph.Bigraph();
    private int taskCounter = 0;
    private int srcVehicleId = 0;
    
    public int getTaskCounter(){
        return taskCounter;
    }

    public int nextTaskId(){
        taskCounter++;
        return taskCounter;
    }

    @Override
    public GraphName getDefaultNodeName() {
        return GraphName.of("ros_bigraph_visualizer/SSE2Bigraph");
    }

    @Override
    public void onStart(final ConnectedNode connectedNode) {

        final Log log = connectedNode.getLog();

        final StructureStateEstimate sse = connectedNode.getTopicMessageFactory().newFromType(StructureStateEstimate._TYPE);
        final MissionStateEstimate mse = connectedNode.getTopicMessageFactory().newFromType(MissionStateEstimate._TYPE);
        final big_actor_msgs.Bigraph bg = connectedNode.getTopicMessageFactory().newFromType(big_actor_msgs.Bigraph._TYPE);
	final big_actor_msgs.Bigraph bgWithHosting = connectedNode.getTopicMessageFactory().newFromType(big_actor_msgs.Bigraph._TYPE);

        // Publishers
        final Publisher<MissionStateEstimate> publisher0 =
	    connectedNode.newPublisher("mse_external", MissionStateEstimate._TYPE);

        final Publisher<big_actor_msgs.Bigraph> publisher1 =
	    connectedNode.newPublisher("bigraph", big_actor_msgs.Bigraph._TYPE);

        final Publisher<std_msgs.String> publisher2 =
	    connectedNode.newPublisher("bgm", std_msgs.String._TYPE);
	
	final Publisher<StructureStateEstimate> publisher3 =
	    connectedNode.newPublisher("sse_external", StructureStateEstimate._TYPE);

	final Publisher<std_msgs.String> publisher4 =
	    connectedNode.newPublisher("bgmWithHosting", std_msgs.String._TYPE);

	final Publisher<big_actor_msgs.Bigraph> publisher5 = 
	    connectedNode.newPublisher("bigraphWithHosting", big_actor_msgs.Bigraph._TYPE);
 
        //Subscribers
        Subscriber<StructureStateEstimate> subscriber0 = connectedNode.newSubscriber("sse", StructureStateEstimate._TYPE);
        subscriber0.addMessageListener(new MessageListener<StructureStateEstimate>() {
		@Override
		    public void onNewMessage(StructureStateEstimate message) {
		    log.info("SSE received \n");

		    sse.setConnections(message.getConnections());
		    sse.setLocations(message.getLocations());
		    sse.setNetworks(message.getNetworks());
		    sse.setSrcVehicleId(message.getSrcVehicleId());
		    sse.setTimeStamp(message.getTimeStamp());
		    sse.setVehicles(message.getVehicles());
		
		    BigraphAbstraction bigraphAbstr = new BigraphAbstraction(message);
		    term = bigraphAbstr.getPhysicalAbstraction().getTerm();
		    termWithHosting = bigraphAbstr.getPhysicalAndHostingAbstraction().getTerm();
		    try {
			bigraph = new edu.berkeley.eloi.bigraph.Bigraph(term+";");
		    } catch (IOException e) {
			e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
		    } catch (RecognitionException e) {
			e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
		    }

		    log.info("Bigraph term: "+ term);
		    log.info("Bigraph term with hosting: "+termWithHosting);
		    signature=bigraphAbstr.getSignature();
		    signatureWithHosting=bigraphAbstr.getSignatureWithHosting();
		    names = bigraphAbstr.getNames();

		    bg.setBgm(term);
		    bg.setNames(names);
		    bg.setSignature(signature);

		    bgWithHosting.setBgm(termWithHosting);
		    bgWithHosting.setNames(names);
		    bgWithHosting.setSignature(signatureWithHosting);
		}
	    });

        Subscriber<MissionStateEstimate> subscriber1 = connectedNode.newSubscriber("mse", MissionStateEstimate._TYPE);
        subscriber1.addMessageListener(new MessageListener<MissionStateEstimate>() {
		@Override
		    public void onNewMessage(MissionStateEstimate message) {
		    log.info("MSE received \n");
		    mse.setSrcVehicleId(message.getSrcVehicleId());
		    mse.setTasks(message.getTasks());
		    mse.setTimeStamp(message.getTimeStamp());
		    log.info(message.getTasks());
		}
	    });

        Subscriber<std_msgs.String> subscriber2 = connectedNode.newSubscriber("brr", std_msgs.String._TYPE);
        subscriber2.addMessageListener(new MessageListener<std_msgs.String>() {
		@Override
		    public void onNewMessage(std_msgs.String message) {
		    log.info("BRR received \n");
		    String brr = (String)(message.getData());
		    log.info(brr);
		    BRR rule = null;
		    try {
			rule = new BRR(brr);
		    } catch (RecognitionException e0) {
			e0.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
		    } catch (IOException e1) {
			e1.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
		    }
		    if(isMoveVehicleBRR(brr)){
			boolean taskCreated = false;
			Task t = connectedNode.getTopicMessageFactory().newFromType(Task._TYPE);
			edu.berkeley.eloi.bigraph.Bigraph redex = rule.getRedex();
			edu.berkeley.eloi.bigraph.Bigraph reactum = rule.getReactum();

			List<BigraphNode> vehicles = redex.getNodesWithControlID("Vehicle");
		     
			if(vehicles.size() == 0) log.info("No vehicles to move");
			else if (vehicles.size() > 1) log.info("Rule attempt to move more than one vehicle.");
			else {
			    BigraphNode vehicleNode = vehicles.get(0);
			    Vehicle vehicle = getVehicleWithName(sse,vehicleNode.getId());
			    if(vehicle == null) log.info("Vehicle does not exist or is not declared in the current structure estimation");
			    else if(reactum.getNode(vehicleNode.getId()) == null) log.info("Vehicle not included in the reactum.");
			    else {
				if(!reactum.getNode(vehicleNode.getId()).getParent().getClass().equals(BigraphNode.class)) log.info("Destination is not a node.");
				else {
				    BigraphNode prnt = (BigraphNode) reactum.getNode(vehicleNode.getId()).getParent();
				    if(prnt.getCtrId().equals("Location")) {
					Location location = getLocationWithName(sse,prnt.getId());
					if (location == null) log.info("Destination does not exist or is not declared in the current structure estimation");
					else {
					    Point centroid = getLocationCentroid(location);
					    log.info("Create waypoint for vehicle " + vehicle.getName() + " at "+ centroid.getX() + ", " + centroid.getY());
					    t = createWPTask(vehicle,centroid.getX(),centroid.getY(),vehicle.getPosition().getAltitude(),t);
					    taskCreated = true;
					}
				    } else if (prnt.getCtrId().equals("Vehicle")) {
					Vehicle destVehicle = getVehicleWithName(sse, prnt.getId());
					if (destVehicle == null) log.info("Destination does not exist or is not declared in the current structure estimation");
					else {
					    log.info("Create waypoint for vehicle " + vehicle.getName() + " at "+ destVehicle.getPosition().getLatitude() + ", " + destVehicle.getPosition().getLongitude());
					    t = createWPTask(vehicle,destVehicle.getPosition().getLatitude(),destVehicle.getPosition().getLongitude(),vehicle.getPosition().getAltitude(),t);
					    taskCreated = true;
					}
				    }
				}
			    }
			}		    
			if(taskCreated){
			    List<Task> tasks = mse.getTasks();
			    tasks.add(t);
			     
			    //set new MSE fields
			    mse.setSrcVehicleId(srcVehicleId);
			    mse.setTasks(tasks);
			    mse.setTimeStamp(System.currentTimeMillis());
			    publisher0.publish(mse);
			}
		    }
		    else if(isHostingBRR(brr)){
			edu.berkeley.eloi.bigraph.Bigraph reactum = rule.getReactum();
			BigraphNode bigactor = (reactum.getNodesWithControlID("BA")).get(0);
			BigraphNode vehicle = reactum.getNodesWithControlID("Vehicle").get(0);
			log.info("Hosting bigActor "+bigactor+" at vehicle "+vehicle);
			Hosting h = connectedNode.getTopicMessageFactory().newFromType(Hosting._TYPE);
			h.setBigActorID(bigactor.getId());
			h.setVehicleName(vehicle.getId()); 
			h.setTimeStamp(System.currentTimeMillis());
			List<Hosting> hostings = sse.getHostings();
			hostings.add(h);
			sse.setSrcVehicleId(srcVehicleId);
			sse.setHostings(hostings);
			sse.setTimeStamp(System.currentTimeMillis());
			publisher3.publish(sse);
		    }
		    else log.info("Unknown BRR");
		}       
	    });


        connectedNode.executeCancellableLoop(new CancellableLoop() {
		@Override
		protected void setup() {
		    bg.setBgm(term);
		    bg.setNames(names);
		    bg.setSignature(signature);
		    bgWithHosting.setBgm(termWithHosting);
		    bgWithHosting.setNames(names);
		    bgWithHosting.setSignature(signatureWithHosting);
		}

		@Override
		protected void loop() throws InterruptedException {
		    std_msgs.String str = publisher2.newMessage();
		    str.setData(term);
		    publisher2.publish(str);
		    std_msgs.String str1 = publisher4.newMessage();
		    publisher4.publish(str1);
		    publisher1.publish(bg);
		    publisher5.publish(bgWithHosting);
		    Thread.sleep(1000);
		}
	    });
    }

    private static String vehicleRegex = "(\\w+)(_Vehicle)(\\[.*\\])?";
    private static String locationRegex = "(\\w+)(_Location)(\\[.*\\])?";
    private static String bigactorRegex = "(\\w+)(_BA)";
    
    
    public static Boolean isMoveVehicleBRR(String brr){
	brr.replaceAll("\\s+","");
	String movePattern0 = vehicleRegex + "(\\|\\||\\|)" + locationRegex + "(\\-\\>)" + locationRegex + "(\\.)" + locationRegex;
	String movePattern1 = vehicleRegex + "(\\|\\||\\|)" + vehicleRegex + "(\\-\\>)" + vehicleRegex + "(\\.)" + vehicleRegex;
	String movePattern2 = vehicleRegex + "(\\-\\>)" + vehicleRegex + "(\\.)" + vehicleRegex;
	if (brr.matches(movePattern0) || brr.matches(movePattern1) || brr.matches(movePattern2)) 
	    return true;
	else return false;								      
    }

    public static Boolean isHostingBRR(String brr){
	brr.replaceAll("\\s+","");
	String hostingPattern0 = vehicleRegex + "(\\-\\>)" + vehicleRegex + "(\\.)" + bigactorRegex;
	if (brr.matches(hostingPattern0)) 
	    return true;
	else return false;								      
    }

    private Task createWPTask(Vehicle v, Double lat, Double lon, Double alt, Task t){
        Long vId = v.getVehicleId();
        int taskId = 100*vId.intValue() + nextTaskId()%100;
        t.setTaskId(taskId);
        t.setTaskType(Task.TT_GOTO_WP);
        t.setStatus(Task.TS_ASSIGNED);
        t.setVehicleId(v.getVehicleId());
        java.lang.String jsonParam = "{\n" +
                "\t \"latitude\": " + lat + ",\n" +
                "\t \"longitude\": " + lon + ",\n" +
                "\t \"altitude\": " + alt + "\n" +
                "}";

        t.setParameters(jsonParam);
	long time = System.currentTimeMillis();
	t.setTaskStamp(time);
	t.setCreationStamp(time);
        return t;
    }

    private Vehicle getVehicleWithName(StructureStateEstimate sse, java.lang.String name){
        Vehicle vehicle = null;
        for(Vehicle v: sse.getVehicles()){
            if(v.getName().equals(name)) vehicle = v;
        }
        return vehicle;
    }

    private Location getLocationWithName(StructureStateEstimate sse, java.lang.String name){
        Location loc = null;
        for(Location l: sse.getLocations()){
            if(l.getName().equals(name)) loc = l;
        }
        return loc;
    }

    private Point getLocationCentroid(Location loc){

        GeometryFactory gf = new GeometryFactory();
        List<LatLng> locVertices = loc.getBoundaries();
        List<Coordinate> locCoord = new ArrayList<Coordinate>();
        for(LatLng point : locVertices){
            locCoord.add(new Coordinate(point.getLatitude(), point.getLongitude()));
        }

        Polygon locPolygon = gf.createPolygon(new LinearRing(new CoordinateArraySequence(locCoord
                .toArray(new Coordinate[locCoord.size()])), gf), null);
        locPolygon = (Polygon) locPolygon.convexHull();

        return locPolygon.getCentroid();

    }

}
