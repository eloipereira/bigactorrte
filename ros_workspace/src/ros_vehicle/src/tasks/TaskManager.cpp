/*
 * TaskManager.cpp
 *
 *  Created on: May 6, 2013
 *      Author: posilva
 */
#include <utils/JSON.h>
#include <tasks/TaskManager.h>
#include <common/Definitions.h>

TaskManager::TaskManager() :
    ROSNode(true), vehicle_id_(0), vehicle_status_(VS_Idle)
{
  active_task_.process = NULL;
}

TaskManager::~TaskManager()
{

}

void
TaskManager::setup()
{
  int vid = 0;
  if (!this->getHandle().hasParam("/vehicle_id"))
  {
    throw ROSVehicleException("Vehicle Id Parameter Missing");
  }
  this->readParam("/vehicle_id", vid, vid);
  vehicle_id_ = vid;
  this->mse_subcriber_ = getHandle().subscribe(
      INTERNAL_MISSION_STATE_ESTIMATE_TOPIC, 100, &TaskManager::mseCallback,
      this);
  this->taskState_publisher_ =
      getHandle().advertise<ros_vehicle_msgs::TaskState>(TASK_STATE_TOPIC, 10);
}

void
TaskManager::clearActiveTask()
{
  delete this->active_task_.process;
  this->active_task_.process = NULL;
}

void
TaskManager::checkTask()
{

  if (active_task_.process != NULL)
  {
    if (active_task_.process->isDone())
    {
      ROS_INFO("Active task is done '%d'", active_task_.mseTask.taskId);
      active_task_.process->finish();

      ros_vehicle_msgs::TaskState ts;
      ts.taskId = active_task_.mseTask.taskId;
      ts.stamp = Clock::getTimeStamp();
      ts.taskStatus = big_actor_msgs::Task::TS_DONE;
      ts.vehicleId = this->vehicle_id_;
      ts.vehicleStatus = this->vehicle_status_;
      taskState_publisher_.publish(ts);
      ROS_INFO("Published task '%d' as DONE", ts.taskId);
      clearActiveTask();
      this->vehicle_status_ = VS_Idle;
    }
    else if (active_task_.process->isFailed())
    {
      active_task_.process->stop();
    }
  }
}

void

TaskManager::loop()
{
  checkTask();
}

void
TaskManager::selectTask(uint8_t taskType, uint32_t tid, std::string params)
{
  switch (taskType)
  {
    case big_actor_msgs::Task::TT_GOTO_WP:
      {
        MoveVehicleTask * task = new MoveVehicleTask(this, tid, params);

        active_task_.process = task;
        active_task_.process->setup();
        active_task_.process->start();
        this->vehicle_status_ = VS_Busy;
        break;
      }
    case big_actor_msgs::Task::TT_GOTO_LOCATION:
      {

        break;
      }
    case big_actor_msgs::Task::TT_SEARCH:
      {

        break;
      }
    case big_actor_msgs::Task::TT_TRACK:
      {

        break;
      }
    case big_actor_msgs::Task::TT_NONE:
      {

        break;
      }
    case big_actor_msgs::Task::TT_HOLD:
      {

        break;
      }
    case big_actor_msgs::Task::TT_VIDEOSTREAM:
      {

        break;
      }
    case big_actor_msgs::Task::TT_RETURN_HOME:
      {

        break;
      }
    default:
      ROS_WARN("Invalid Task type");
      break;
  }
}

uint8_t
TaskManager::activateTask(big_actor_msgs::Task it)
{
  ROS_INFO("Activating task %d", it.taskId);
//! mark task as active
  this->active_task_.mseTask = it;
//! notify update task state to MSE processor


//! start the monitor to handle the task
  selectTask(it.taskType, it.taskId, it.parameters);

  ros_vehicle_msgs::TaskState ts;
  ts.taskId = it.taskId;
  ts.stamp = Clock::getTimeStamp();
  ts.taskStatus = big_actor_msgs::Task::TS_IN_PROGRESS;
  ts.vehicleId = this->vehicle_id_;
  ts.vehicleStatus = this->vehicle_status_;

  taskState_publisher_.publish(ts);

  ROS_INFO("Published task '%d' as IN PROGRESS", ts.taskId);

  return it.taskType;
}

void
TaskManager::mseCallback(
    const big_actor_msgs::MissionStateEstimate::ConstPtr& msg)
{
//!  if this is my mse  then i will consider it
  TasksVector_t v = msg->tasks;
  for (TasksVector_t::iterator it = v.begin(); it != v.end(); ++it)
  {
    if (it->status == big_actor_msgs::Task::TS_DONE
        || it->status == big_actor_msgs::Task::TS_TODO)
      continue;

    if (this->vehicle_status_ == VS_Idle)
    {
      if (it->vehicleId == this->vehicle_id_)
      {
        if (it->status == big_actor_msgs::Task::TS_ASSIGNED) // OK
        {
          // its for me lets take it
          //! I have work to do
          ROS_INFO("I Have Work TO DO");
          //! mark task as active
          uint8_t taskType = activateTask(*it);
          break;
        }
        else
        {
          if (it->status != big_actor_msgs::Task::TS_DONE && it->status != big_actor_msgs::Task::TS_CANCELED)
          {
            ROS_INFO(
                "I AM IDLE AND THE TASK  STATUS IS NOT 'ASSIGNED'  it's '%d'",
                it->status);
          }
        }
      }
    }
    else
    { // I am busy
      if (it->vehicleId == this->vehicle_id_)
      {
        if (it->taskId == this->active_task_.mseTask.taskId) // OK
        {
          if (it->status == big_actor_msgs::Task::TS_CANCELED)
          {
            if (this->active_task_.process != NULL)
            {
              this->active_task_.process->cancel();
              clearActiveTask();
              this->vehicle_status_ = VS_Idle;

              ROS_INFO("Active Task Canceled");
            }
          }
          else if (it->status == big_actor_msgs::Task::TS_IN_PROGRESS)
          {
            ROS_INFO("Task in Progress: %d", it->taskId);
          }
          //! ROS_INFO(" Let's look if something is changed to this task...");
          //! Let's look if something is changed to this task
          //! Look into the parameters and the state changed
        }
        else
        {
          if (it->status != big_actor_msgs::Task::TS_CANCELED)
          {
            ROS_WARN(
                "<<ATTENTION>> My active task (%d)changed will I'am Busy!!",
                this->active_task_.mseTask.taskId);
          }

          //! Something is wrong I am Busy but my active task
          //! is not the received task that as my vid
        }
      }
    }
  }
}

