#include "server_receiver.hpp"

ServerReceiver::ServerReceiver(){}
ServerReceiver::~ServerReceiver(){}

void ServerReceiver::Init(){

    p_start = m_nh.advertise<std_msgs::Bool>("/output/diagnostic/start", 1);
    p_emergency_stop = m_nh.advertise<std_msgs::Bool>("/output/diagnostic/emergency_stop", 1);
    p_auto_pilot = m_nh.advertise<std_msgs::Bool>("/output/diagnostic/auto_pilot",1);

    m_nh.getParam("/server_receiver/server_url", m_server_url);
    InitClient();
    m_client.connect(m_server_url);
}

void ServerReceiver::InitClient(){

    m_client.set_open_listener([this](){ OnOpen(); });
    m_client.set_close_listener([this](const sio::client::close_reason& reason){ OnClose(reason); });

    m_client.socket()->on("start_select_web", [&](const sio::event& event){ OnStartMsg(event); });
    m_client.socket()->on("emergency_stop_select_web", [&](const sio::event& event){ OnEmergencyStopMsg(event); });
    m_client.socket()->on("auto_pilot_mode_select_web", [&](const sio::event& event){ OnAutoPilotMsg(event); });

}

void ServerReceiver::Run(){
    if(m_server_connect){
        Publish();
        ClearMsg();
    }
}

void ServerReceiver::Publish(){

    if(m_start && m_start_cmd.data == true){
        p_start.publish(m_start_cmd);
        ROS_WARN("PUBLISH");
    }

    if(m_emergency_stop && m_emergency_stop_cmd.data == true){
        p_emergency_stop.publish(m_emergency_stop_cmd);
        ROS_INFO("PUBLISH");
    }

    if(m_auto_pilot && m_auto_pilot_cmd.data == true){
        p_auto_pilot.publish(m_auto_pilot_cmd);
        ROS_FATAL("PUBLISH");
    }

}

void ServerReceiver::ClearMsg(){
    m_start = false;
    m_start_cmd.data = false;
    m_emergency_stop = false;
    m_emergency_stop_cmd.data = false;
    m_auto_pilot = false;
    m_auto_pilot_cmd.data = false;
}

void ServerReceiver::OnOpen(){
    ROS_FATAL(" << SERVER CONNECT >> ");
    m_server_connect = true;
}

void ServerReceiver::OnClose(const sio::client::close_reason& reason){
    ROS_FATAL(" << SERVER DISCONNECT : %d >> ", reason);
    m_server_connect = false;
}

void ServerReceiver::OnStartMsg(const sio::event& event){

    std::string message = event.get_message()->get_string();
    CheckTimeDelay(message);

    if(CheckCRC(message)){
        m_start = true;
        m_start_cmd.data = true;
        p_start.publish(m_start_cmd);
        ROS_WARN(" << RECEIVED START MESSAGE : CRC OK >> ");
    }
    else{
        m_start = false;
        ROS_FATAL(" << RECEIVED START MESSAGE : CRC FAIL !!! >> ");
    }
}

void ServerReceiver::OnEmergencyStopMsg(const sio::event& event){

    std::string message = event.get_message()->get_string();
    CheckTimeDelay(message);

    if(CheckCRC(message)){
        m_emergency_stop = true;
        m_emergency_stop_cmd.data = true;
        p_emergency_stop.publish(m_emergency_stop_cmd);
        ROS_WARN(" << RECEIVED EMERGENCY STOP MESSAGE : CRC OK >> ");   
    }
    else{
        m_emergency_stop = false;
        ROS_FATAL(" << RECEIVED EMERGENCY STOP MESSAGE : CRC FAIL !!! >> ");   

    }
}

void ServerReceiver::OnAutoPilotMsg(const sio::event& event){

    std::string message = event.get_message()->get_string();
    CheckTimeDelay(message);

    if(CheckCRC(message)){
        m_auto_pilot = true;
        m_auto_pilot_cmd.data = true;
        p_auto_pilot.publish(m_auto_pilot_cmd);
        ROS_WARN(" << RECEIVED AUTO PILOT MESSAGE : CRC OK >> ");
    }
    else{
        m_auto_pilot = false;
        ROS_FATAL(" << RECEIVED AUTO PILOT MESSAGE : CRC FAIL !!! >> ");
    }
}

bool ServerReceiver::CheckCRC(std::string msg){

    Json::Reader reader;
    Json::Value root;
    bool parsingRet = reader.parse(msg, root); 

    if(parsingRet){
        std::string received_CRC = root["crc"].asString();
        
        root.removeMember("crc");

        Json::FastWriter fast_writer;
        std::string root_string = fast_writer.write(root);
        std::string calculated_CRC = ReceiveCRCProcess(root_string);


        if(received_CRC == calculated_CRC){
            return true;
        }
        else{
            ROS_FATAL("CRC INCORRECT");
            return false;
        }
    }
    else{
        return false;
    }

}

void ServerReceiver::CheckTimeDelay(std::string msg){

    Json::Reader reader;
    Json::Value root;
    bool parsingRet = reader.parse(msg, root);

    if(parsingRet){
        double web_time = root["web_time"].asDouble();

        auto currentTime = std::chrono::system_clock::now().time_since_epoch();
        double currnetTime_millis = std::chrono::duration_cast<std::chrono::milliseconds>(currentTime).count();

        double timeDelay = currnetTime_millis - web_time;
        // ROS_INFO("Time Delay Web - Client : %f, %f, %f", currnetTime_millis, web_time, timeDelay);
        
        std::ofstream out;
        out.open("/home/junung/git/2023Graduation/src/server_receiver/from_web_time_delay.csv", std::ios::app);

        out.precision(6);
        out.setf(std::ios_base::fixed, std::ios_base::floatfield);

        if(out.is_open()){
            out << timeDelay << '\n';
            ROS_INFO("Time Delay : %fms", timeDelay);
        }
        else{
            ROS_WARN("<< FILE DOES NOT EXIST >>");
        }
        out.close();
    }

}

std::string ServerReceiver::ReceiveCRCProcess(std::string file){

    boost::crc_32_type crc;
    file.pop_back();
    crc.process_bytes(file.c_str(), file.length());

    std::stringstream string_stream;
    std::string calculated_CRC;
    string_stream << std::hex << crc.checksum();
    calculated_CRC = string_stream.str();

    return calculated_CRC;
}

int main(int argc, char ** argv){
    ros::init(argc, argv, "server_receiver");
    
    ServerReceiver server_receiver;
    server_receiver.Init();

    // ros::Rate loop_rate(10);
    
    while(ros::ok()){
        
        // server_receiver.Run();
        ros::spin();
        // loop_rate.sleep();
    }

    return 0;
}