#include "server_sender.hpp"

ServerSender::ServerSender() {}
ServerSender::~ServerSender() {}

void ServerSender::OdometryCallback(const Odometry::ConstPtr& msg){
    m_odometry_mutex.lock();

    m_odometry.header.frame_id = msg->header.frame_id;
    m_odometry.header.seq = msg->header.seq;
    m_odometry.header.stamp = msg->header.stamp;

    m_odometry.child_frame_id = msg->child_frame_id;

    m_odometry.pose.pose.orientation.w = msg->pose.pose.orientation.w;
    m_odometry.pose.pose.orientation.x = msg->pose.pose.orientation.x;
    m_odometry.pose.pose.orientation.y = msg->pose.pose.orientation.y;
    m_odometry.pose.pose.orientation.z = msg->pose.pose.orientation.z;

    m_odometry.pose.pose.position.x = msg->pose.pose.position.x;
    m_odometry.pose.pose.position.y = msg->pose.pose.position.y;
    m_odometry.pose.pose.position.z = msg->pose.pose.position.z;

    m_odometry.twist.twist.angular.x = msg->twist.twist.angular.x;
    m_odometry.twist.twist.angular.y = msg->twist.twist.angular.y;
    m_odometry.twist.twist.angular.z = msg->twist.twist.angular.z;

    m_odometry.twist.twist.linear.x = msg->twist.twist.linear.x;
    m_odometry.twist.twist.linear.y = msg->twist.twist.linear.y;
    m_odometry.twist.twist.linear.z = msg->twist.twist.linear.z;

    m_odometry_mutex.unlock();

    m_odometry_on = true;
}

void ServerSender::VelocityCallback(const Float32::ConstPtr& msg){

    m_velocity_mutex.lock();

    m_velocity.data = msg->data;

    m_velocity_mutex.unlock();

    m_velocity_on = true;
}

void ServerSender::Init(){
    
    s_odometry = m_nh.subscribe("/input/carla/odometry", 1, &ServerSender::OdometryCallback, this);
    s_velocity = m_nh.subscribe("/input/carla/velocity", 1, &ServerSender::VelocityCallback, this);

    m_nh.getParam("/server_sender/server_url", m_server_url);
    InitClient();
    m_client.connect(m_server_url);
}

void ServerSender::InitClient(){

    m_client.set_open_listener([this](){ OnOpen();});
    m_client.set_close_listener([this](const sio::client::close_reason& reason){ OnClose(reason); });

}

void ServerSender::Run(){
    if(m_server_connect){
        SendJson();
    }
}

void ServerSender::SendJson(){
    if(!m_json_file.empty()){
        m_json_file.clear();
    }
    
    m_json_file = WriteJson();

    if(!m_json_file.empty()){
        m_client.socket()->emit("Vehicle_Info", m_json_file);
        // ROS_INFO("Send Vehicle Info Msg : %s", m_json_file.c_str());
    }
}

void ServerSender::OnOpen(){
    ROS_WARN(" << SERVER CONNECT >> ");
    m_server_connect = true;
}

void ServerSender::OnClose(const sio::client::close_reason& reason){
    ROS_WARN(" << SERVER DISCONNECT : %d >> ", reason);
    m_server_connect = false;
}

std::string ServerSender::WriteJson(){
    if(m_odometry_on && m_velocity_on){

        Json::Value root;

        root["x"] = std::to_string(m_odometry.pose.pose.position.x);
        root["y"] = std::to_string(m_odometry.pose.pose.position.y);
        root["z"] = std::to_string(m_odometry.pose.pose.position.z);
        root["velocity"] = std::to_string(m_velocity.data * 3.6); // [km/h]

        auto currentTime = std::chrono::system_clock::now().time_since_epoch();
        auto currentTime_millis = std::chrono::duration_cast<std::chrono::milliseconds>(currentTime).count();
        // double currentTime_millis = ros::Time::now().toNSec();
        root["client_time"] = std::to_string(currentTime_millis);

        Json::StreamWriterBuilder builder;
        builder["commentStyle"] = "None";
        builder["indentation"] = "";
        builder["enableYAMLCompatibility"] = false;
        builder["dropNullPlaceholders"] = true;

        std::string json_file = Json::writeString(builder, root);

        std::string calculated_crc = SendCRCProcess(json_file);
        root["crc"] = calculated_crc;
        json_file = Json::writeString(builder, root);
        return json_file;
    }
    else{
        return "";
    }
}

std::string ServerSender::SendCRCProcess(std::string file){
    boost::crc_32_type crc;
    crc.process_bytes(file.c_str(), file.length());

    std::stringstream string_stream;
    std::string calculated_CRC;
    string_stream << std::hex << crc.checksum();
    calculated_CRC = string_stream.str();

    return calculated_CRC;
}

int main(int argc, char ** argv){
    ros::init(argc, argv, "server_sender");

    ServerSender server_sender;
    server_sender.Init();

    ros::Rate loop_rate(1000);
    while(ros::ok()){

        ros::spinOnce();
        server_sender.Run();
        loop_rate.sleep();
    }

    return 0;
}