#include <ros/ros.h>

#include <cstdlib>
#include <string>
#include <iostream>
#include <sstream>

#include <PiccoloSDK.h>
#include <PiccoloRosMessages.h>

#define DEBUG 0

const char* NODE_NAME = "piccolo_driver";

float value = 0;
float last_value = 1;
ros::Publisher telemetry_pub;
ros::Publisher status_pub;
ros::Publisher wpList_pub;
ros::Publisher waypoint_pub;
ros::Publisher from_payload_pub;
//!
ros::Subscriber command_sub;
ros::Subscriber qry_waypoint_sub;
ros::Subscriber track_sub;
ros::Subscriber to_payload_sub;
ros::Subscriber update_wp_sub;
ros::Subscriber request_wp_sub;

/**
 * Connection to Piccolo Comm
 */
Piccolo::SDK::Core::CommunicationManager *commManager;
/**
 *
 */

void
createWaypointListRequestPacket(
    Piccolo::SDK::Core::Packets::WaypointListActionsEnum flags,
    BYTE_VECTOR* payload)
{
  Piccolo::SDK::Core::Packets::WaypointListPacket wpListPkt;
  BYTE_VECTOR wp0to103;
  wp0to103.resize(13, 0);
  memset(&(wp0to103[0]), 0xff, 13);
  BYTE_VECTOR wp104to249;

  wp104to249.resize(19, 0);
  memset(&(wp104to249[0]), 0xff, 19);
  wpListPkt.setWaypoints0To103(wp0to103);
  wpListPkt.setWaypoints103To249(wp104to249);
  wpListPkt.setFlags(flags);
  wpListPkt.toRaw(payload);

}

void
PublishWaypointList(const ros::Publisher& pub,
    Piccolo::SDK::Core::Packets::WaypointListPacket* pkt)
{
  piccolo_ros::PiccoloWPList msg;
  Piccolo::SDK::Core::Packets::WaypointListPacket wpl;
  msg.vehicleid = pkt->getVehicleId();
  std::vector<uint8_t> v = pkt->getActiveWaypoints();
  msg.list.insert(msg.list.begin(), v.begin(), v.end());
  pub.publish(msg);
}
void
PublishWaypoint(const ros::Publisher& pub,
    Piccolo::SDK::Core::Packets::WaypointPacket* pkt)
{
  piccolo_ros::PiccoloWaypoint msg;
  msg.altitude = pkt->getAltitude();
  msg.vehicleid = pkt->getVehicleId();
  msg.index = pkt->getIndex();
  msg.next = pkt->getNext();
  msg.latitude = pkt->getLatitude();
  msg.longitude = pkt->getLongitude();
  msg.deployParachute = pkt->isDeployParachute();
  msg.deployDrop = pkt->isDeployDrop();
  msg.orbitDirection = pkt->isOrbitDirection();
  msg.cameraTarget = pkt->isCameraTarget();
  msg.landingPoint = pkt->isLandingPoint();
  msg.slopeControl = pkt->isSlopeControl();
  msg.lightsOn = pkt->isLightsOn();
  msg.preTurn = pkt->isPreTurn();
  msg.orbitTime = pkt->getOrbitTime();
  msg.orbitRadius = pkt->getOrbitRadius();
  msg.altitude = pkt->getAltitude();
  msg.windFind = pkt->getWindFind();
  msg.orbitTime = pkt->getOrbitTime();
  msg.user = pkt->getUser();
  msg.orbitAbove = pkt->isOrbitAbove();
  msg.orbitBelow = pkt->isOrbitBelow();
  msg.hoverPoint = pkt->isHoverPoint();
  msg.altitudeToGround = pkt->isAltitudeToGround();
  msg.orbitMultiplier50 = pkt->isOrbitMultiplier50();
  msg.altLSB = pkt->getAltLsb();
  pub.publish(msg);
}
/**
 *
 */
void
PublishStatus(const ros::Publisher& pub,
    Piccolo::SDK::Core::Packets::SystemsStatusHighResolutionPacket* pkt)
{
  // load ROS message

  piccolo_ros::PiccoloStatus msg;

  msg.vehicleid = pkt->getVehicleId();

  msg.orbitRadius = pkt->getOrbitRadius();
  msg.trackerStatus = pkt->getTrackerStatus();
  msg.timeToWp = pkt->getTimeToWp();
  msg.wpFrom = pkt->getWaypointFrom();
  msg.wpTo = pkt->getWaypointTo();
  msg.airBoundaryViolated = pkt->isAirBoundaryViolated();
  msg.autopilotEngineKill = pkt->isAutopilotEngineKill();
  msg.commsTimeout = pkt->isCommsTimeout();
  msg.fligthTimerElapsed = pkt->isFlightTimerElapsed();
  msg.fligthTermination = pkt->isFligthTermination();
  msg.gpsTimeout = pkt->isGpsTimeout();
  msg.orbiting = pkt->isOrbiting();
  pub.publish(msg);
}

void
PublishTelemetry(const ros::Publisher& pub,
    Piccolo::SDK::Core::Packets::TelemetryHighResolutionPacket* telemetryPacket)
{
  // load ROS message
  piccolo_ros::PiccoloTelemetry msg;
  msg.vehicleid = telemetryPacket->getSourceId();
  msg.latitude = telemetryPacket->getLatitude();
  msg.longitude = telemetryPacket->getLongitude();
  msg.altitude = telemetryPacket->getHeight();
  msg.ias = telemetryPacket->getIas();
  msg.accelX = telemetryPacket->getAccelX();
  msg.accelY = telemetryPacket->getAccelY();
  msg.accelZ = telemetryPacket->getAccelZ();
  msg.roll = telemetryPacket->getRoll();
  msg.pitch = telemetryPacket->getPitch();
  msg.yaw = telemetryPacket->getYaw();
  msg.agl = telemetryPacket->getAgl();
  msg.barometricAltitude = telemetryPacket->getBarometricAltitude();
  msg.compass = telemetryPacket->getHeading();
  msg.leftRPM = telemetryPacket->getLeftRpm();
  msg.rightRPM = telemetryPacket->getRightRpm();
  msg.staticPressure = telemetryPacket->getStaticPressure();
  msg.vx = telemetryPacket->getNorth();
  msg.vy = telemetryPacket->getEast();
  msg.vz = telemetryPacket->getDown();
  msg.windSouth = telemetryPacket->getWindSouth();
  msg.windWest = telemetryPacket->getWindWest();

  pub.publish(msg);
}

void
commandCallback(const piccolo_ros::PiccoloCommand::ConstPtr& msg)
{
  if (!commManager->SendAutopilotCommandPacket(
      msg->command_code, Piccolo::SDK::Utils::DegreestoRad(msg->value)))
  {
    if (DEBUG)
      ROS_INFO("%s", "Send Command Failed");
  }

}

void
to_payloadCallback(const piccolo_ros::PiccoloToPayload::ConstPtr& msg)
{

  BYTE_VECTOR data;
  data.insert(data.begin(), msg->data.begin(), msg->data.end());
  if (!commManager->SendPayloadPacket(&data))
  {
    ROS_WARN("Failed to send data to payload stream");
  }
}

void
trackCallback(const piccolo_ros::PiccoloTrack::ConstPtr& msg)
{
  if (!commManager->SendTrackPacket(msg->to, msg->go_to))
  {
    ROS_INFO("%s", "Send track Failed");
  }
  else if (DEBUG)
    ROS_INFO("%s", "Send track ");

}
void
createWaypointPacket(BYTE_VECTOR* payload, uint8_t wp, int alt, float lat,
    float lng, int next)
{
  Piccolo::SDK::Core::Packets::WaypointPacket pkt;
  ROS_INFO("Create a waypoint packet");

  pkt.setAltitude(alt);
  pkt.setLongitude(Piccolo::SDK::Utils::toMilliArcSeconds(lng));
  pkt.setLatitude(Piccolo::SDK::Utils::toMilliArcSeconds(lat));
  pkt.setIndex(wp);
  pkt.setNext(next);
  pkt.setLandingPoint(false);
  pkt.setDeployParachute(false);
  pkt.setDeployDrop(false);
  pkt.setPreTurn(true);
  pkt.setSlopeControl(true);
  pkt.setOrbitRadius(0);
  pkt.toRaw(payload);
}

void
requestWaypointsCallback(
    const piccolo_ros::PiccoloRequestWaypoints::ConstPtr& msg)
{
  BYTE_VECTOR* payload = new BYTE_VECTOR();
  Piccolo::SDK::Core::Packets::WaypointListActionsEnum flags =
      Piccolo::SDK::Core::Packets::RequestAllWaypoints;

  createWaypointListRequestPacket(flags, payload);

  commManager->SendAutopilotStreamPacket(
      Piccolo::SDK::Core::Packets::WAYPOINT_LIST, payload);

  delete payload;
}
void
updateWpPositionCallback(const piccolo_ros::PiccoloWaypoint::ConstPtr& msg)
{
  ROS_INFO("Update Waypoint requeste received:%8.4f,%8.4f,%8.4f", msg->latitude,
           msg->longitude, msg->altitude);
  BYTE_VECTOR* payload = new BYTE_VECTOR(18);
  Piccolo::SDK::Core::Packets::WaypointPacket pkt;
  Piccolo::SDK::Core::Packets::WaypointPacket pkt2;
  ROS_INFO("Create a waypoint packet");
  pkt.setAltitude(msg->altitude);
  pkt.setLongitude(msg->longitude);
  ROS_INFO("PKT Waypoint :%8.4f,%8.4f,%8.4f", pkt.getLatitude(),
      pkt.getLongitude(), pkt.getAltitude());
  pkt.setLatitude(msg->latitude);
  pkt.setIndex(msg->index);
  pkt.setNext(msg->next);
  pkt.setLandingPoint(msg->landingPoint);
  pkt.setDeployParachute(msg->deployParachute);
  pkt.setDeployDrop(msg->deployDrop);
  pkt.setPreTurn(msg->preTurn);
  pkt.setSlopeControl(msg->slopeControl);
  pkt.setOrbitRadius(msg->orbitRadius);
  pkt.toRaw(payload);
  pkt2.load(payload);
  ROS_INFO("PKT:%s ",pkt.toString().c_str());
  ROS_INFO("PKT2:%s ",pkt2.toString().c_str());
  if (!commManager->SendAutopilotStreamPacket(
      Piccolo::SDK::Core::Packets::WAYPOINT, payload))
  {
    ROS_INFO("%s", "Send waypoint Failed");
  }
  delete payload;
  /**
  if(!commManager->SendTrackPacket(pkt.getIndex(),pkt.getIndex())){
    ROS_INFO("%s", "Send track Failed");
  }
  **/
}
PARAMETERS_T
setupParameters(const ros::NodeHandle& n)
{
  PARAMETERS_T params;
  if (DEBUG)
  {
    ROS_INFO("Node Namespace: %s", n.getNamespace().c_str());
    ROS_INFO("Port Exists: %d", (int )n.hasParam("port"));
  }
  int connType = Piccolo::SDK::Core::SOCKET;
  if (!n.getParam("type", connType))
  {
    connType = Piccolo::SDK::Core::SOCKET;
  }
  if (connType == Piccolo::SDK::Core::SOCKET)
  {
    if (!n.getParam("port", params["port"]))
    {
      params["port"] = "2001";
      ROS_WARN("**** Mission parameter <port> apply default: %s",
               params["port"].c_str());
    }

    if (!n.getParam("host", params["host"]))
    {
      params["host"] = "localhost";
      ROS_WARN("**** Mission parameter <host> apply default: %s",
               params["host"].c_str());

    }
  }
  else
  {
    if (!n.getParam("device", params["device"]))
    {

      params["device"] = "/dev/ttyS0";
      ROS_WARN("**** Mission parameter <device> apply default: %s",
               params["device"].c_str());
    }
    if (!n.getParam("baudrate", params["baudrate"]))
    {
      params["baudrate"] = "57600";
      ROS_WARN("**** Mission parameter <baudrate> apply default: %s",
               params["baudrate"].c_str());
    }
  }

  ROS_WARN("Connection parameters: %s:%s", params["host"].c_str(),
           params["port"].c_str());
  return params;
}

void
HandleAutopilotStream(BYTE_VECTOR& payload)
{

  uint16_t source = Piccolo::SDK::Utils::UChar2UShort(payload[4], payload[5]);
  if (source != 0 && source != 0xffff && source != 0xfffe)
  {

    Piccolo::SDK::Core::Packets::AutopilotStream* stream =
        new Piccolo::SDK::Core::Packets::AutopilotStream();
    stream->load(&payload);
    for (int i = 0; i < stream->getNumberOfPackets(); ++i)
    {
      Piccolo::SDK::Core::Packets::AutopilotStreamPacket* autopilotStreamPkt =
          new Piccolo::SDK::Core::Packets::AutopilotStreamPacket();
      autopilotStreamPkt->load(&(stream->getPacket(i)));

      switch (autopilotStreamPkt->getType())
      {
        case Piccolo::SDK::Core::Packets::TELEMETRY_HI_RES:
          {
            Piccolo::SDK::Core::Packets::TelemetryHighResolutionPacket* telP =
                new Piccolo::SDK::Core::Packets::TelemetryHighResolutionPacket();
            telP->setSourceId(
                Piccolo::SDK::Utils::UChar2UShort(payload[4], payload[5]));
            telP->load(autopilotStreamPkt->getPayload());
            //! publish short packet
            PublishTelemetry(telemetry_pub, telP);
            delete (telP);
            break;
          }
        case Piccolo::SDK::Core::Packets::STATUS_HI_RES:
          {
            Piccolo::SDK::Core::Packets::SystemsStatusHighResolutionPacket * pkt =
                new Piccolo::SDK::Core::Packets::SystemsStatusHighResolutionPacket();
            pkt->setVehicleId(
                Piccolo::SDK::Utils::UChar2UShort(payload[4], payload[5]));

            pkt->load(autopilotStreamPkt->getPayload());
            if (autopilotStreamPkt->getPayload()->size() == 41) // Short version
              PublishStatus(status_pub, pkt);
            delete (pkt);
            break;
          }
        case Piccolo::SDK::Core::Packets::WAYPOINT:
          {
            Piccolo::SDK::Core::Packets::WaypointPacket * pkt =
                new Piccolo::SDK::Core::Packets::WaypointPacket();
            pkt->setVehicleId(
                Piccolo::SDK::Utils::UChar2UShort(payload[4], payload[5]));
            pkt->setVehicleId(
                Piccolo::SDK::Utils::UChar2UShort(payload[4], payload[5]));
            pkt->load(autopilotStreamPkt->getPayload());
            PublishWaypoint(waypoint_pub, pkt);
            break;
          }
        case Piccolo::SDK::Core::Packets::WAYPOINT_LIST:
          {
            Piccolo::SDK::Core::Packets::WaypointListPacket * pkt =
                new Piccolo::SDK::Core::Packets::WaypointListPacket();
            pkt->setVehicleId(
                Piccolo::SDK::Utils::UChar2UShort(payload[4], payload[5]));

            pkt->load(autopilotStreamPkt->getPayload());
            PublishWaypointList(wpList_pub, pkt);

            break;
          }
        default:
          break;
      }
      delete (autopilotStreamPkt);
    }
    delete (stream);

  }
}

void
HandlePayloadStream(BYTE_VECTOR& payload)
{
  Piccolo::SDK::Core::Packets::PayloadStream* stream =
      new Piccolo::SDK::Core::Packets::PayloadStream();
  stream->load(&payload);
  piccolo_ros::PiccoloFromPayload m;
  m.vehicleid = Piccolo::SDK::Utils::UChar2UShort(payload[4], payload[5]);
  m.len = stream->getPayload()->size();
  m.data.insert(m.data.begin(), stream->getPayload()->begin(),
                stream->getPayload()->end());
  from_payload_pub.publish(m);
}

void
SetupSubscribers(ros::NodeHandle& n)
{
  /**
   *
   */
  command_sub = n.subscribe("/piccolocommand", 1000, commandCallback);
  qry_waypoint_sub = n.subscribe("/piccoloquerywaypoints", 1, commandCallback);
  track_sub = n.subscribe("/piccolotrack", 1000, trackCallback);
  to_payload_sub = n.subscribe("/piccolotopayload", 1000, to_payloadCallback);
  update_wp_sub = n.subscribe("/piccoloupdatewppos", 1,
                              updateWpPositionCallback);
  request_wp_sub = n.subscribe("/piccolorequestwaypoints", 1,
                               requestWaypointsCallback);
}

void
SetupPublishers(ros::NodeHandle& n)
{
  telemetry_pub = n.advertise<piccolo_ros::PiccoloTelemetry>(
      "/piccolotelemetry", 10);
  status_pub = n.advertise<piccolo_ros::PiccoloStatus>("/piccolostatus", 10);
  wpList_pub = n.advertise<piccolo_ros::PiccoloWPList>("/piccolowplist", 10);
  waypoint_pub = n.advertise<piccolo_ros::PiccoloWaypoint>("/piccolowaypoint",
                                                           10);
  from_payload_pub = n.advertise<piccolo_ros::PiccoloFromPayload>(
      "/piccolofrompayload", 10);
}

int
main(int argc, char **argv)
{
  ros::init(argc, argv, NODE_NAME);
  ros::NodeHandle n("~");
  /**
   *
   */
  SetupSubscribers(n);
  SetupPublishers(n);
  ros::Rate loop_rate(100);

  PARAMETERS_T params = setupParameters(n);

  commManager = new Piccolo::SDK::Core::CommunicationManager(
      Piccolo::SDK::Core::SOCKET, params);
  commManager->init();

  std::vector<Piccolo::SDK::Core::Packets::StreamType> selectedStreams;
  selectedStreams.push_back(Piccolo::SDK::Core::Packets::AUTOPILOT_STREAM);
  selectedStreams.push_back(Piccolo::SDK::Core::Packets::PAYLOAD_STREAM);
  while (ros::ok())
  {
    try
    {
      BYTE_VECTOR payload(14, 0);
      if (commManager->getStreams(selectedStreams, payload))
      {

        switch (payload[10])
        {
          case Piccolo::SDK::Core::Packets::AUTOPILOT_STREAM:
            HandleAutopilotStream(payload);
            break;
          case Piccolo::SDK::Core::Packets::PAYLOAD_STREAM:
            HandlePayloadStream(payload);
            break;
          default:
            break;
        }
      }
    }
    catch (std::exception &e)
    {
      ROS_ERROR("%s", e.what());
    }

    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
// %EndTag(FULLTEXT)%

