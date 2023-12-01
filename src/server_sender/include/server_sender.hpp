#ifndef __SERVER_SENDER_HPP__
#define __SERVER_SENDER_HPP__

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

// Include ROS Libraries
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Float32.h>
#include <nav_msgs/Odometry.h>
#include <kukirun_msgs/Obstacles.h>

// Include External Libraries
#include "jsoncpp/json/json.h"
#include "boost/crc.hpp"
#include "sio_client.h"


using Odometry = nav_msgs::Odometry;
using Float32 = std_msgs::Float32;

class ServerSender{

    private:
        
        ros::NodeHandle m_nh;

        sio::client m_client;
        std::string m_server_url = "";

        ros::Subscriber s_odometry;
        ros::Subscriber s_velocity;
        ros::Subscriber s_object;

        std::mutex m_odometry_mutex;
        std::mutex m_velocity_mutex;
        std::mutex m_object_mutex;

        bool m_server_connect = false;
        bool m_odometry_on = false;
        bool m_velocity_on = false;
        bool m_object_on = false;

        Odometry m_odometry;
        Float32 m_velocity;
        std::string m_json_file;


    public:
        ServerSender();
        ~ServerSender();

        void Init();
        void InitClient();
        void Run();

        void OnOpen();
        void OnClose(const sio::client::close_reason& reason);

        void OdometryCallback(const Odometry::ConstPtr& msg);
        void VelocityCallback(const Float32::ConstPtr& msg);
        // void ObjectCallback(const)

        std::string SendCRCProcess(std::string file);
        std::string WriteJson();
        void SendJson();
        
};

#endif