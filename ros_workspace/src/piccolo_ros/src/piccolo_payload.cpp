#include <ros/ros.h>
#include <cstdlib>
#include <string>
#include <iostream>
#include <Piccolo/SDK/Core/Connection.h>
#include <Piccolo/SDK/Core/SerialConnection.h>
#include <Piccolo/SDK/Core/NetworkConnection.h>
namespace {

    const char* NODE_NAME = "piccolo_payload";

}

/**
 * Global variables
 */
Piccolo::SDK::Core::Connection * connection;

bool setupConnection() {
    connection = new Piccolo::SDK::Core::NetworkConnection("localhost", 2006);
    return connection->connect();
}

int main(int argc, char **argv) {

    ros::init(argc, argv, NODE_NAME);
    ros::NodeHandle n;
    ros::Rate loop_rate(100);

    if (setupConnection()) {
        unsigned char c;
        while (ros::ok()) {
            try {
                c = connection->read();
                printf("%c", c);
            } catch (std::exception &e) {
                ROS_ERROR("%s", e.what());
            }
            ros::spinOnce();
            loop_rate.sleep();
        }
    }else
        ROS_ERROR("%s", "Not Connected");
    return 0;
}
// %EndTag(FULLTEXT)%
