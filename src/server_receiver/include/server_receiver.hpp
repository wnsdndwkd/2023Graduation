#ifndef __SERVER_RECEIVER_HPP__
#define __SERVER_RECEIVER_HPP__

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
#include <ctime>
#include <fstream>
#include <ostream>

// Include ROS Libraries
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int32.h>
#include <carla_msgs/CarlaEgoVehicleControl.h>

// Include External Libraries
#include "jsoncpp/json/json.h"
#include "boost/crc.hpp"
#include "sio_client.h"

using CarlaControl = carla_msgs::CarlaEgoVehicleControl;

class ServerReceiver{

    private:

        ros::NodeHandle m_nh;
        sio::client m_client;
        std::string m_server_url = "";

        ros::Publisher p_start;
        ros::Publisher p_emergency_stop;
        ros::Publisher p_auto_pilot;

        bool m_server_connect = false;
        bool m_start = false;
        bool m_emergency_stop = false;
        bool m_auto_pilot = false;

        std_msgs::Bool m_start_cmd;
        std_msgs::Bool m_emergency_stop_cmd;
        std_msgs::Bool m_auto_pilot_cmd;

    public:

        ServerReceiver();
        ~ServerReceiver();

        void Init();
        void InitClient();
        void Run();
        void Publish();
        void ClearMsg();
        
        void OnOpen();
        void OnClose(const sio::client::close_reason& reason);
        void OnStartMsg(const sio::event& event);
        void OnEmergencyStopMsg(const sio::event& event);
        void OnAutoPilotMsg(const sio::event& event);

        bool CheckCRC(std::string msg);
        void CheckTimeDelay(std::string msg);
        std::string ReceiveCRCProcess(std::string file);

}; 


#endif