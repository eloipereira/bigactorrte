#include <ros/ros.h>
#include <piccolo_ros/PiccoloTelemetry.h>
#include <piccolo_ros/PiccoloCommand.h>
#include <piccolo_ros/PiccoloTrack.h>
const int AUTOPILOT_LOOP_TYPE = 24;
const double BANK_ANGLE = 0.0;

float value = 0;
float last_value = 5;
int count = 0;
unsigned char way=0;
piccolo_ros::PiccoloCommand command_msg;
ros::Publisher command_pub;
ros::Publisher track_pub;
piccolo_ros::PiccoloTrack track_msg;
void sendCommand(const piccolo_ros::PiccoloTelemetry::ConstPtr& msg) {
    ROS_INFO("IAS: %f", (float) (msg->ias-2000)/100.0);
    if ((int) (value) >= 10) {
        last_value = -1;
    } else {
        if ((int) (value) <= -10) {
            last_value = 1;
        }
    }
    value += last_value;
    command_msg.command_code = 2;
    command_msg.value = value;
    command_pub.publish(command_msg);
}

void telemetryCallback(const piccolo_ros::PiccoloTelemetry::ConstPtr& msg) {
    //sendCommand(msg);

    if (value > 10) {
        track_msg.to = way;
        track_msg.go_to = 0;
        track_pub.publish(track_msg);
        value = 0;
        way++;
        if(way>3){
            way=0;
        }
    }
    value++;
}
// %EndTag(CALLBACK)%
int main(int argc, char **argv) {
    ros::init(argc, argv, "piccolo_controller");

    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe("piccolotelemetry", 1000, telemetryCallback);
    command_pub = n.advertise<piccolo_ros::PiccoloCommand>("piccolocommand", 1000);
    track_pub = n.advertise<piccolo_ros::PiccoloTrack>("piccolotrack", 1000);
    command_msg.command_code = 2;
    command_msg.value = value;
    command_pub.publish(command_msg);

    ros::spin();

    return 0;
}
// %EndTag(FULLTEXT)%
