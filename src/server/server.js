const express = require('express');
const app = express();
const server = require('http').createServer(app);
const cors = require("cors");
const io = require('socket.io')(server,{
    cors:{
        origin: "*",
        credentials: true,
    },
});
const bodyParser = require("body-parser");
const crc = require('crc');
const { update } = require('lodash');
const port = 9000;

const ROS_IP = "::ffff:127.0.0.1";
const WEB_IP = "::1";

// Client - Server Connect
io.on('connection', (socket) => {
    const IP = socket.handshake.headers['x-forwarded-for'] || socket.handshake.address;
    console.log("New Client Access :", IP, socket.id);

    if ((WEB_IP === IP) | (IP === "::1")) {
        socket.join("room_web");
        console.log("WEB IP", console.log(socket.rooms));
    } 
    else if (ROS_IP === IP) {
        socket.join("room_ros");
        console.log("ROS_IP");
    }

    socket.on("disconnect", (socket) => {
        console.log("Client Disconnect : ", IP, socket.id);
        clearInterval(socket.interval);
    });

    socket.on("error", (error) => {
        console.error(error);
    });

    // Clinet -> Server -> Web //
    socket.on('Vehicle_Info', (msg) =>{

        const receivedMessage = JSON.parse(msg);
        const receivedCRC = receivedMessage.crc;
        delete receivedMessage.crc;
    
        const calculatedCRC = crc.crc32(JSON.stringify(receivedMessage)).toString(16);
        if(calculatedCRC == receivedCRC){
            const currentTime = new Date().getTime();
            console.log("ROS TIME : ", receivedMessage.time);
            console.log("JS TIME : ", currentTime);
            console.log("Time Delay : ", currentTime - receivedMessage.time);
            const timeDelay = currentTime - (receivedMessage.client_time / 10);
            receivedMessage.server_time = currentTime;

            const updateMessage = JSON.stringify(receivedMessage);
            socket.to("room_web").emit("Vehicle_Info_Web", updateMessage);
        }
        else{
            console.log("CRC ERROR! ", receivedCRC, calculatedCRC);
        }
    });

    // Web -> Server -> Client //
    socket.on('drive_start', (msg) => {
        const receivedMessage = JSON.parse(msg);
        const receivedCRC = receivedMessage.crc;
        delete receivedMessage.crc;
    
        const calculatedCRC = crc.crc32(JSON.stringify(receivedMessage)).toString(16);
        if(calculatedCRC == receivedCRC){

            // const currentTime = new Date().getTime();
            // receivedMessage.server_time = currentTime;
            // const updatedCRC = crc.crc32(JSON.stringify(receivedMessage)).toString(16);
            // console.log(JSON.stringify(receivedMessage).length);
            // receivedMessage.crc = updatedCRC;

            // const updateMessage = JSON.stringify(receivedMessage);
            // console.log("To client : ", updateMessage);
            socket.to("room_ros").emit("start_select_web", msg);
            console.log(" << DRIVE START MSG EMIT >>");
        }
        else{
            console.log("CRC ERROR! ", receivedCRC, calculatedCRC);
        }
    });

    socket.on('emergency_stop_start', (msg) => {
        const receivedMessage = JSON.parse(msg);
        const receivedCRC = receivedMessage.crc;
        delete receivedMessage.crc;
    
        const calculatedCRC = crc.crc32(JSON.stringify(receivedMessage)).toString(16);
        if(calculatedCRC == receivedCRC){

            // const currentTime = new Date().getTime();
            // receivedMessage.server_time = currentTime;
            // const updatedCRC = crc.crc32(JSON.stringify(receivedMessage)).toString(16);
            // receivedMessage.crc = updatedCRC;

            // const updateMessage = JSON.stringify(receivedMessage);

            socket.to("room_ros").emit("emergency_stop_select_web", msg);
            console.log(" << EMERGENCY STOP MSG EMIT >> ");
        }
        else{
            console.log("CRC ERROR! ", receivedCRC, calculatedCRC);
        }
    });

    socket.on('auto_pilot_start', (msg) => {
        const receivedMessage = JSON.parse(msg);
        const receivedCRC = receivedMessage.crc;
        delete receivedMessage.crc;
    
        const calculatedCRC = crc.crc32(JSON.stringify(receivedMessage)).toString(16);
        if(calculatedCRC == receivedCRC){

            // const currentTime = new Date().getTime() / 10;
            // receivedMessage.server_time = currentTime;
            // const updatedCRC = crc.crc32(JSON.stringify(receivedMessage)).toString(16);
            // receivedMessage.crc = updatedCRC;

            // const updateMessage = JSON.stringify(receivedMessage);

            socket.to("room_ros").emit("auto_pilot_mode_select_web", msg);
            console.log(" << AUTO PILOT MSG EMIT >> ");
        }
        else{
            console.log("CRC ERROR! ", receivedCRC, calculatedCRC);
        }
    })

});

// 서버 시작
server.listen(port, () => {
  console.log(`서버가 http://localhost:${port} 에서 실행 중입니다!`);
});