// ==========================================================================
// Copyright (C) 2013 Portuguese Air Force Academy                       =
// Research Center                                                          =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software Foundation,
// Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
// ==========================================================================
// Project: ros_vehicle-Debug@ros_vehicle
// Date:    11:13:11 PM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: Task.h
// 
// ==========================================================================

#ifndef TASK_H_
#define TASK_H_
#include <string>
#include <stdint.h>
//! forward declaration
class TaskManager;
/*
 *
 */
class Task
{
public:
  Task(TaskManager* tm,uint64_t tid,std::string params);
  virtual
  ~Task();

  virtual void start()=0;
  virtual void stop()=0;
  virtual void finish()=0;
  virtual void cancel()=0;
  virtual bool isDone()=0;
  virtual bool isFailed()=0;
  virtual void setup()=0;
   TaskManager&
  getTm()
  {
    return *tm_;
  }

  uint64_t
  getTid() const
  {
    return tid_;
  }

  void
  setTid(uint64_t tid)
  {
    tid_ = tid;
  }

  bool
  isCanceled() const
  {
    return canceled_;
  }

  void
  setCanceled(bool canceled)
  {
    canceled_ = canceled;
  }

  void
  setDone(bool done)
  {
    done_ = done;
  }

  void
  setFailed(bool failed)
  {
    failed_ = failed;
  }

  const std::string&
  getParams() const
  {
    return params_;
  }

  void
  setParams(const std::string& params)
  {
    params_ = params;
  }

private:
  TaskManager* tm_;
  uint64_t tid_;
  std::string params_;
protected:

  bool done_;
  bool canceled_;
  bool failed_;
};

#endif /* TASK_H_ */
