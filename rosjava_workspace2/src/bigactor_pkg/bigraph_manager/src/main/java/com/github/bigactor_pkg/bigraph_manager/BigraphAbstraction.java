package com.github.bigactor_pkg.bigraph_manager;

import big_actor_msgs.*;
import big_actor_msgs.Location;
import com.vividsolutions.jts.geom.*;
import com.vividsolutions.jts.geom.impl.CoordinateArraySequence;
import java.util.ArrayList;
import java.util.List;
import edu.berkeley.eloi.bigraph.*;

class BigraphAbstraction{
	private edu.berkeley.eloi.bigraph.Bigraph physical;
	private edu.berkeley.eloi.bigraph.Bigraph physicalAndHosting;
	private List<String> signature;
	private List<String> signatureWithHosting;
	private List<String> names;
	
	public BigraphAbstraction(StructureStateEstimate sse){
		this.sse2bigraph(sse);
		this.sse2signature(sse);
		this.sse2signatureWithHosting(sse);
		this.sse2names(sse);
	}

	public edu.berkeley.eloi.bigraph.Bigraph getPhysicalAbstraction(){
		return this.physical;
	}

	public edu.berkeley.eloi.bigraph.Bigraph getPhysicalAndHostingAbstraction(){
		return this.physicalAndHosting;
	}

	public List<String> getSignature(){
		return this.signature;
	}
	
	public List<String> getSignatureWithHosting(){
		return this.signatureWithHosting;
	}
	
	public List<String> getNames(){
		return this.names;
	}

	private void sse2bigraph(StructureStateEstimate sse){
		PlaceList places = new PlaceList();
		Region rg0 = new Region(0);
		places.add(rg0);

		for (Location l : sse.getLocations()){
			Place prt = findLocationParent(l,sse,rg0);
			places.add(new BigraphNode(l.getName(),"Location",new ArrayList<String>(),prt));
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
				places.add(new BigraphNode(v.getName(),"Vehicle", names0, prt));
			}	
			this.physical = new edu.berkeley.eloi.bigraph.Bigraph(places);
			
			PlaceList placesWithHosting = new PlaceList();
			
			placesWithHosting.addAll(places);
			for(Hosting h: sse.getHostings()){
				Place prt2 = new Region(0);
				for(Place p:places){
					if (p.getId().equals(h.getVehicleName())){
						prt2 = p;
						break;
					}
				}
				placesWithHosting.add(new BigraphNode(h.getBigActorID(),"BA",new ArrayList<String>(),prt2));
			}
			this.physicalAndHosting = new edu.berkeley.eloi.bigraph.Bigraph(placesWithHosting);
		}

		private void sse2signature(StructureStateEstimate sse){
			List<String> signature = new ArrayList<String>();

			for (Location l: sse.getLocations()){
				signature.add(l.getName()+"_Location");
			}

			for (Vehicle v: sse.getVehicles()){
				signature.add(v.getName()+"_Vehicle");
			}
			this.signature=signature;
		}

		private void sse2signatureWithHosting(StructureStateEstimate sse){
			List<String> signatureWithHosting = new ArrayList<String>();

			for (Location l: sse.getLocations()){
				signatureWithHosting.add(l.getName()+"_Location");
			}

			for (Vehicle v: sse.getVehicles()){
				signatureWithHosting.add(v.getName()+"_Vehicle");
			}
			for (Hosting h: sse.getHostings()){
				signatureWithHosting.add(h.getBigActorID()+"_BA");
			}
			this.signatureWithHosting=signatureWithHosting;
		}

		private void sse2names(StructureStateEstimate sse){
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
				this.names=names;
			}

			private Place findLocationParent(Location loc, StructureStateEstimate sse, Region region){
				Location container = findMinimumContainer(loc,sse.getLocations());
				if (container.equals(loc)){
					return region;
				} else {
					return new BigraphNode(container.getName(),"Location",new ArrayList<java.lang.String>(),region);
				}

			}

			private Place findVehicleParent(Vehicle v, StructureStateEstimate sse, Region region){
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
						parent = new BigraphNode(l.getName(),"Location",new ArrayList<java.lang.String>(),region);
		//System.out.println("Found parent of " + v + ": " + parent);
					}
				}

				if (parent == null){
					parent = region;
				}
				return parent;
			}

			private Location findMinimumContainer(Location loc, List<Location> locations){
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
		}
		
