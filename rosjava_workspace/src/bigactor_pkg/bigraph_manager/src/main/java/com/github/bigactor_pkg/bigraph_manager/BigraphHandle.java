package com.github.bigactor_pkg.bigraph_manager;

import big_actor_msgs.*;
import big_actor_msgs.Location;
import com.vividsolutions.jts.geom.*;
import com.vividsolutions.jts.geom.impl.CoordinateArraySequence;
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
    private List<String> signature = new ArrayList<String>();
    private List<String> names = new ArrayList<String>();
    private edu.berkeley.eloi.bigraph.Bigraph bigraph = new edu.berkeley.eloi.bigraph.Bigraph();
    private int taskCounter = 0;

    
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


        // Publishers
        final Publisher<MissionStateEstimate> publisher0 =
                connectedNode.newPublisher("mse", MissionStateEstimate._TYPE);

        final Publisher<big_actor_msgs.Bigraph> publisher1 =
                connectedNode.newPublisher("bigraph", big_actor_msgs.Bigraph._TYPE);

        final Publisher<std_msgs.String> publisher2 =
                connectedNode.newPublisher("bgm", std_msgs.String._TYPE);


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
                term = sse2bigraph(message).getTerm();

                try {
                    bigraph = new edu.berkeley.eloi.bigraph.Bigraph(term+";");
                } catch (IOException e) {
                    e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
                } catch (RecognitionException e) {
                    e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
                }

                log.info("Bigraph term: "+ term);
                signature = sse2signature(message);
                names = sse2names(message);

                bg.setBgm(term);
                bg.setNames(names);
                bg.setSignature(signature);
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

		     List<Node> vehicles = redex.getNodesWithControlID("Vehicle");
		     
		     if(vehicles.size() == 0) log.info("No vehicles to move");
		     else if (vehicles.size() > 1) log.info("Rule attempt to move more than one vehicle.");
		     else {
			 Node vehicleNode = vehicles.get(0);
		         Vehicle vehicle = getVehicleWithName(sse,vehicleNode.getId());
			 if(vehicle == null) log.info("Vehicle does not exist or is not declared in the current structure estimation");
		         else if(reactum.getNode(vehicleNode.getId()) == null) log.info("Vehicle not included in the reactum.");
			 else {
			     if(!reactum.getNode(vehicleNode.getId()).getParent().getClass().equals(Node.class)) log.info("Destination is not a node.");
			     else {
				 Node prnt = (Node) reactum.getNode(vehicleNode.getId()).getParent();
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
			 mse.setTimeStamp(System.currentTimeMillis());
			 mse.setSrcVehicleId(0);
			 mse.setTasks(tasks);
			 publisher0.publish(mse);
		     }
		}
		else if(isHostingBRR(brr)){
		    edu.berkeley.eloi.bigraph.Bigraph reactum = rule.getReactum();
		    List<Node> bigactors = reactum.getNodesWithControlID("BA");
		    List<Node> vehicles = reactum.getNodesWithControlID("Vehicle");
		    log.info("Hosting bigActor "+bigactors.get(0)+" at vehicle "+vehicles.get(0));
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
            }

            @Override
            protected void loop() throws InterruptedException {
                std_msgs.String str = publisher2.newMessage();
                str.setData(term);
                publisher2.publish(str);
                publisher1.publish(bg);
                Thread.sleep(1000);
            }
        });
    }

    public static Boolean isMoveVehicleBRR(String brr){
	String movePattern0 = "(\\w_Vehicle)||(\\w_Location|\\w_Vehicle)->(\\w_Vehicle).(\\w_Location|\\w_Vehicle)";
	String movePattern1 = "(\\w_Vehicle)|(\\w_Location|\\w_Vehicle)->(\\w_Vehicle).(\\w_Location|\\w_Vehicle)";
	if (brr.matches(movePattern0) || brr.matches(movePattern1)) 
	    return true;
	else return false;								      
    }

    public static Boolean isHostingBRR(String brr){
	String hostingPattern0 = "(\\w_Vehicle)->(\\w_Vehicle).(\\w_BA)";
	if (brr.matches(hostingPattern0)) 
	    return true;
	else return false;								      
    }


    public static edu.berkeley.eloi.bigraph.Bigraph sse2bigraph(StructureStateEstimate sse){
        PlaceList places = new PlaceList();
        Region rg0 = new Region(0);
        places.add(rg0);

        for (Location l : sse.getLocations()){
            Place prt = findLocationParent(l,sse,rg0);
            //System.out.println("Parent of " + l.getName() + ": "+ prt);
            places.add(new Node(l.getName(),"Location",new ArrayList<String>(),prt));

        }
        for (Vehicle v : sse.getVehicles()){
            Place prt = findVehicleParent(v, sse, rg0);
            List<Network> networks = v.getNetworks();
            List<String> names0 = new ArrayList<String>();
            for (Network n: networks){
                if (n.getType() == Network.NT_ETHERNET_10M
                        || n.getType() == Network.NT_ETHERNET_100M
                        || n.getType() == Network.NT_ETHERNET_1G
                        || n.getType() == Network.NT_ETHERNET_10G
                        && ! names0.contains("ethernet"+n.getAddress())) names0.add("ethernet"+n.getAddress());
                if (n.getType() == Network.NT_WIFI_2MB
                        || n.getType() == Network.NT_WIFI_11MB
                        || n.getType() == Network.NT_WIFI_27MB
                        || n.getType() == Network.NT_WIFI_54MB
                        || n.getType() == Network.NT_WIFI_600MB
                        || n.getType() == Network.NT_WIFI_1300MB
                        || n.getType() == Network.NT_WIFI_7000MB
                        && ! names0.contains("wifi"+n.getAddress())) names0.add("wifi"+n.getAddress());
                if (n.getType() == Network.NT_MESH_500kB && ! names0.contains("mesh"+n.getAddress())) names0.add("mesh"+n.getAddress());
                if (n.getType() == Network.NT_ACOUSTIC_7kB
                        || n.getType() == Network.NT_ACOUSTIC_9kB
                        || n.getType() == Network.NT_ACOUSTIC_14kB
                        || n.getType() == Network.NT_ACOUSTIC_31kB
                        && ! names0.contains("acoustic"+n.getAddress())) names0.add("acoustic"+n.getAddress());
                if (n.getType() == Network.NT_PICCOLO && ! names0.contains("piccolo"+n.getAddress())) names0.add("piccolo"+n.getAddress());
                if (n.getType() == Network.NT_AIS && ! names0.contains("ais")) names0.add("ais");
            }
            places.add(new Node(v.getName(),"Vehicle", names0, prt));
        }

        edu.berkeley.eloi.bigraph.Bigraph bg = new edu.berkeley.eloi.bigraph.Bigraph(places);
        //System.out.println(bg);
        return bg;
    }

    private static List<String> sse2signature(StructureStateEstimate sse){
        List<String> signature = new ArrayList<String>();

        for (Location l: sse.getLocations()){
            signature.add(l.getName()+"_Location");
        }

        for (Vehicle v: sse.getVehicles()){
            signature.add(v.getName()+"_Vehicle");
        }
        return signature;
    }

    private static List<String> sse2names(StructureStateEstimate sse){
        List<String> names = new ArrayList<String>();
        for (Network n: sse.getNetworks()){
            if (n.getType() == Network.NT_ETHERNET_10M
                    || n.getType() == Network.NT_ETHERNET_100M
                    || n.getType() == Network.NT_ETHERNET_1G
                    || n.getType() == Network.NT_ETHERNET_10G
                    && ! names.contains("ethernet"+n.getAddress())) names.add("ethernet"+n.getAddress());
            if (n.getType() == Network.NT_WIFI_2MB
                    || n.getType() == Network.NT_WIFI_11MB
                    || n.getType() == Network.NT_WIFI_27MB
                    || n.getType() == Network.NT_WIFI_54MB
                    || n.getType() == Network.NT_WIFI_600MB
                    || n.getType() == Network.NT_WIFI_1300MB
                    || n.getType() == Network.NT_WIFI_7000MB
                    && ! names.contains("wifi"+n.getAddress())) names.add("wifi"+n.getAddress());
            if (n.getType() == Network.NT_MESH_500kB && ! names.contains("mesh"+n.getAddress())) names.add("mesh"+n.getAddress());
            if (n.getType() == Network.NT_ACOUSTIC_7kB
                    || n.getType() == Network.NT_ACOUSTIC_9kB
                    || n.getType() == Network.NT_ACOUSTIC_14kB
                    || n.getType() == Network.NT_ACOUSTIC_31kB
                    && ! names.contains("acoustic"+n.getAddress())) names.add("acoustic"+n.getAddress());
            if (n.getType() == Network.NT_PICCOLO && ! names.contains("piccolo"+n.getAddress())) names.add("piccolo"+n.getAddress());
            if (n.getType() == Network.NT_AIS && ! names.contains("ais")) names.add("ais");
        }
        return names;
    }

    private static Place findLocationParent(Location loc, StructureStateEstimate sse, Region region){
        Location container = findMinimumContainer(loc,sse.getLocations());
        if (container.equals(loc)){
            return region;
        } else {
            return new Node(container.getName(),"Location",new ArrayList<java.lang.String>(),region);
        }

    }

    private static Place findVehicleParent(Vehicle v, StructureStateEstimate sse, Region region){
        Place parent = null;

        Coordinate vehCoord = new Coordinate(v.getPosition().getLatitude(), v.getPosition().getLongitude());
        GeometryFactory gf = new GeometryFactory();
        Point vehPoint = gf.createPoint(vehCoord);

        for(Location l : sse.getLocations()){
            List<LatLng> ll = l.getBoundaries();
            List<Coordinate> points = new ArrayList<Coordinate>();
            for(LatLng point : ll){
                points.add(new Coordinate(point.getLatitude(), point.getLongitude()));
            }

            Polygon polygon = gf.createPolygon(new LinearRing(new CoordinateArraySequence(points
                    .toArray(new Coordinate[points.size()])), gf), null);

            if(vehPoint.within(polygon)){
                parent = new Node(l.getName(),"Location",new ArrayList<java.lang.String>(),region);
                //System.out.println("Found parent of " + v + ": " + parent);
            }
        }

        if (parent == null){
            parent = region;
        }
        return parent;
    }

    private static Location findMinimumContainer(Location loc, List<Location> locations){
        Location minContainer  = loc;

        GeometryFactory gf = new GeometryFactory();

        List<LatLng> locVertices = loc.getBoundaries();
        List<Coordinate> locCoord = new ArrayList<Coordinate>();
        for(LatLng point : locVertices){
            locCoord.add(new Coordinate(point.getLatitude(), point.getLongitude()));
        }

        Polygon locPolygon = gf.createPolygon(new LinearRing(new CoordinateArraySequence(locCoord
                .toArray(new Coordinate[locCoord.size()])), gf), null);
        locPolygon = (Polygon) locPolygon.convexHull();

        Double minContainerArea = Double.MAX_VALUE;

        Double maxIntersectionArea = 0.0;
        Boolean foundContainer = false;

        for(Location l_t : locations){
            List<LatLng> ll = l_t.getBoundaries();
            List<Coordinate> points = new ArrayList<Coordinate>();
            for(LatLng point : ll){
                points.add(new Coordinate(point.getLatitude(), point.getLongitude()));
            }

            Polygon polygon = gf.createPolygon(new LinearRing(new CoordinateArraySequence(points
                    .toArray(new Coordinate[points.size()])), gf), null);

            polygon = (Polygon) polygon.convexHull();


            if(polygon.contains(locPolygon) && polygon.getArea() < minContainerArea && polygon.getArea() > locPolygon.getArea()){
                minContainer=l_t;
                minContainerArea = polygon.getArea();
                foundContainer = true;
            } else if(!foundContainer && locPolygon.overlaps(polygon))
                if(locPolygon.intersection(polygon).getArea() > maxIntersectionArea) {
                    maxIntersectionArea = locPolygon.intersection(polygon).getArea();
                    if(maxIntersectionArea > 0.5 * locPolygon.getArea()){
                        minContainer=l_t;
                        //System.out.println("Found intersection of " + loc.getName() + " with " + l_t.getName());
                    }
                }

        }
        //System.out.println("Minimum container of "+ loc.getName() + ": "+ minContainer.getName());
        return minContainer;
    }

    private Task createWPTask(Vehicle v, Double lat, Double lon, Double alt, Task t){
        Long time = System.currentTimeMillis();
        t.setTaskStamp(time);
        Long vId = v.getVehicleId();
        int taskId = 100*vId.intValue() + nextTaskId()%100;
        t.setTaskId(taskId);
        t.setTaskType(Task.TT_GOTO_WP);
        t.setStatus(Task.TS_ASSIGNED);
        t.setCreationStamp(time);
        t.setVehicleId(v.getVehicleId());
        java.lang.String jsonParam = "{\n" +
                "\t \"latitude\": " + lat + ",\n" +
                "\t \"longitude\": " + lon + ",\n" +
                "\t \"altitude\": " + alt + "\n" +
                "}";

        t.setParameters(jsonParam);
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
