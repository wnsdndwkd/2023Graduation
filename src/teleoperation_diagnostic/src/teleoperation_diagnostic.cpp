#include "teleoperation_diagnostic.hpp"

Diagnostic::Diagnostic(){}

Diagnostic::~Diagnostic(){}

void Diagnostic::Init(){

    s_control_cmd = m_nh.subscribe("/input/diagnostic/control_cmd", 1, &Diagnostic::ControlCmdCallback, this);
    s_start_cmd = m_nh.subscribe("/input/diagnostic/start", 1, &Diagnostic::StartCallback, this);
    s_emergency_stop_cmd = m_nh.subscribe("/input/diagnostic/emergency_stop", 1, &Diagnostic::EmergencyStopCallback, this);
    s_auto_pilot_cmd = m_nh.subscribe("/input/diagnostic/auto_pilot", 1, &Diagnostic::AutoPilotCallback, this);

    p_carla_control = m_nh.advertise<carla_msgs::CarlaEgoVehicleControl>("/output/carla/control_cmd", 1);
    p_carla_auto_pilot = m_nh.advertise<std_msgs::Bool>("/output/carla/auto_pilot", 1);

    ROS_WARN(" << NODE INIT >> ");
}

void Diagnostic::Run(){
    ROS_INFO("RUN");
    if(is_control_cmd && is_start_cmd){
        p_carla_control.publish(m_control_cmd);
        ROS_INFO(" << CONTROL COMMAND PUBLISH >> ");
    }

    if(is_emergency_stop_cmd){
        ClearVar();
        p_carla_control.publish(m_control_cmd);
        ROS_FATAL(" << EMERGENCY STOP COMMAND PUBLISH >> ");
    }

    if(is_auto_pilot_cmd){
        p_carla_auto_pilot.publish(m_auto_pilot_cmd);
        ROS_WARN(" << AUTO PILOT COMMAND PUBLISH >> ");
    }
}

void Diagnostic::ClearVar(){
    is_control_cmd = false;
    is_auto_pilot_cmd = false;

    m_control_cmd.header.frame_id = "";
    m_control_cmd.header.seq = 0;
    m_control_cmd.header.stamp.sec = 0;
    m_control_cmd.header.stamp.nsec = 0;

    m_control_cmd.throttle = 0.0;
    m_control_cmd.brake = 1.0;
    m_control_cmd.steer = 0.0;

    m_control_cmd.gear = 1;
    m_control_cmd.hand_brake = 0;
    m_control_cmd.manual_gear_shift = 0;
    m_control_cmd.reverse = 0;

    m_start_cmd.data = false;
    m_emergency_stop_cmd.data = false;
    m_auto_pilot_cmd.data = false;
}

void Diagnostic::ControlCmdCallback(const carla_msgs::CarlaEgoVehicleControl::ConstPtr& msg){
    // m_control_cmd_mutex.lock();

    m_control_cmd = *msg;

    // m_control_cmd_mutex.unlock();
    is_control_cmd = true;
}

void Diagnostic::StartCallback(const std_msgs::Bool::ConstPtr& msg){
    // m_start_cmd_mutex.lock();

    m_start_cmd.data = msg->data;

    // m_start_cmd_mutex.unlock();
    if(m_start_cmd.data == true){
        is_start_cmd = true;
        is_emergency_stop_cmd = false;
    }
    ROS_INFO("S");
}

void Diagnostic::EmergencyStopCallback(const std_msgs::Bool::ConstPtr& msg){
    // m_emergency_stop_cmd_mutex.lock();

    m_emergency_stop_cmd.data= msg->data;

    // m_emergency_stop_cmd_mutex.unlock();
    if(m_emergency_stop_cmd.data == true){
        is_emergency_stop_cmd = true;
        is_start_cmd = false;
    }
    ROS_INFO("E");
}

void Diagnostic::AutoPilotCallback(const std_msgs::Bool::ConstPtr& msg){
    // m_auto_pilot_cmd_mutex.lock();

    m_auto_pilot_cmd.data = msg->data;

    // m_auto_pilot_cmd_mutex.unlock();
    if(m_auto_pilot_cmd.data == true){
        is_auto_pilot_cmd = true;
        is_start_cmd = false;
        is_emergency_stop_cmd = false;
    }
    ROS_INFO("A");
}

int main(int argc, char** argv){
    ros::init(argc, argv, "diagnostic");

    Diagnostic diagnostic;

    diagnostic.Init();

    ros::Rate loop_rate(20);

    while(ros::ok()){

        diagnostic.Run();

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}