#ifndef __TELEOPERATION_DIAGNOSTIC_HPP__
#define __TELEOPERATION_DIAGNOSTIC_HPP__

// C++ Libraries
#include <iostream>
#include <string>
#include <memory>
#include <chrono>
#include <functional>
#include <vector>
#include <mutex>
#include <thread>
#include <condition_variable>

// Include ROS Libraries
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int32.h>
#include <carla_msgs/CarlaEgoVehicleControl.h>

// Include External Libraries
#include "jsoncpp/json/json.h"
#include "boost/crc.hpp"
#include "sio_client.h"

class Diagnostic{

    private:

        ros::NodeHandle m_nh;

        ros::Subscriber s_control_cmd;
        ros::Subscriber s_start_cmd;
        ros::Subscriber s_emergency_stop_cmd;
        ros::Subscriber s_auto_pilot_cmd;

        ros::Publisher p_carla_control;
        ros::Publisher p_carla_auto_pilot;

        std::mutex m_control_cmd_mutex;
        std::mutex m_start_cmd_mutex;
        std::mutex m_emergency_stop_cmd_mutex;
        std::mutex m_auto_pilot_cmd_mutex;

        bool is_control_cmd = false;
        bool is_start_cmd = false;
        bool is_emergency_stop_cmd = false;
        bool is_auto_pilot_cmd = false;

        carla_msgs::CarlaEgoVehicleControl m_control_cmd;
        std_msgs::Bool m_start_cmd;
        std_msgs::Bool m_emergency_stop_cmd;
        std_msgs::Bool m_auto_pilot_cmd;

    public:
        Diagnostic();
        ~Diagnostic();

        void Init();
        void Run();
        void ClearVar();

        void ControlCmdCallback(const carla_msgs::CarlaEgoVehicleControl::ConstPtr& msg);
        void StartCallback(const std_msgs::Bool::ConstPtr& msg);
        void EmergencyStopCallback(const std_msgs::Bool::ConstPtr& msg);
        void AutoPilotCallback(const std_msgs::Bool::ConstPtr& msg);

};
#endif