/*
 * TaskManager.h
 *
 *  Created on: May 6, 2013
 *      Author: posilva
 */

#ifndef TASKMANAGER_H_
#define TASKMANAGER_H_

//! ROS Headers
#include <ros/ros.h>
#include <common/BigActorMsgs.h>
#include <common/Definitions.h>
#include <ros_vehicle_msgs/TaskState.h>
#include <common/Clock.h>
#include <common/ROSNode.h>
#include <tasks/Task.h>
#include <tasks/MoveVehicleTask.h>

typedef struct {
  big_actor_msgs::Task mseTask;
  Task * process;
}TaskContext_t;

typedef std::vector<Task> TaskVector_t;

enum VehicleStatus
{
  VS_Busy = big_actor_msgs::Vehicle::VS_BUSY,
  VS_Idle = big_actor_msgs::Vehicle::VS_IDLE
};

class TaskManager : public ROSNode
{

public:
  TaskManager();
  virtual
  ~TaskManager();
  void
  setup();
  void
  loop();
  void
  mseCallback(const big_actor_msgs::MissionStateEstimate::ConstPtr& msg);
private:
  //! vehicle id
  uint64_t vehicle_id_;
  //! knowned tasks
  //TasksMap_t tasks_;

  //! current active task
  TaskContext_t active_task_;
  //! ROS Publishers
  ros::Publisher taskState_publisher_;
  //! ROS Subscribers
  ros::Subscriber mse_subcriber_;

  VehicleStatus vehicle_status_;



  void
  selectTask(uint8_t taskType, uint32_t tid, std::string params);
  uint8_t
  activateTask(big_actor_msgs::Task it);
  void
  checkTask();
  void
  clearActiveTask();
};

#endif /* TASKMANAGER_H_ */
