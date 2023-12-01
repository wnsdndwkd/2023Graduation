import React, { useEffect, useRef } from "react";
import { useRecoilState } from "recoil";
import { io } from "socket.io-client";

import styles from "./style.module.scss";
import Section1 from "../../components/Section1";
import Section2 from "../../components/Section2";
import {
  velocityState,
  systemState,
  eventLogState,
  vehicleXCoordinateState,
  vehicleYCoordinateState,
  vehicleZCoordinateState,
  driveStartButtonState,
  emergencyStopButtonState,
  autoPilotButtonState,
} from "../../stores";
import { useSetRecoilState } from "recoil";
// const client = new WebSocket("ws://localhost:9999");
// const stream_client = new WebSocket("ws://localhost:8000");
const socket = io.connect("http://localhost:9000");

const Main = () => {
  const canvasRef = useRef(null);
  const [velocity, setVelocity] = useRecoilState(velocityState);
  const [system, setSystem] = useRecoilState(systemState);
  const [eventLog, setEventLog] = useRecoilState(eventLogState);
  const [x_coordinate, setXCoordinate] = useRecoilState(vehicleXCoordinateState);
  const [y_coordinate, setYCoordinate] = useRecoilState(vehicleYCoordinateState);
  const [z_coordinate, setZCoordinate] = useRecoilState(vehicleZCoordinateState);
  const setIsDriveStart = useSetRecoilState(driveStartButtonState);
  const setIsEmergencyStop = useSetRecoilState(emergencyStopButtonState);
  const setIsAutoPilot = useSetRecoilState(autoPilotButtonState)

  useEffect(() => {
    socket.connect(() => {
      console.log(" << Server Socket Connect >> ");
    });

    socket.on("Vehicle_Info_Web", (msg) =>{
      if ((msg === undefined) | (msg === null)) return;
      setVelocity(Math.round(JSON.parse(msg).velocity * 100) / 100);
      setXCoordinate(Math.round(JSON.parse(msg).x * 100) / 100);
      setYCoordinate(Math.round(JSON.parse(msg).y * 100) / 100);
      setZCoordinate(Math.round(JSON.parse(msg).z * 100) / 100);

      const clientTime = JSON.parse(msg).client_time;
      const serverTime = JSON.parse(msg).server_time;
      const webTime = new Date().getTime();
      // console.log(clientTime, webTime);
      // console.log("Time Delay client - web : ", webTime - clientTime);
      console.log(webTime - clientTime);
      // console.log("Time Delay server - web : ",webTime - serverTime);
      if(JSON.parse(msg).velocity == 0){
        setSystem("주행 대기");
      }
      else{
        setSystem("주행 중");
      }
    });

    socket.on("event_log", (msg) => {
      if (
        (msg === undefined) |
        (msg === null) |
        (JSON.parse(msg).object === null) |
        (JSON.parse(msg).object === "")
      )
        return;
      setEventLog(JSON.parse(msg).object);
    });

  }, [
    setSystem,
    setVelocity,
    setEventLog,
    setXCoordinate,
    setYCoordinate,
    setZCoordinate,
    setIsDriveStart,
    setIsEmergencyStop,
    setIsAutoPilot,
    system,
    velocity,
    eventLog,
    x_coordinate,
    y_coordinate,
    z_coordinate
  ]);

  return (
    <div className={styles.wrapper}>
      <Section1
        // client={client}
        // stream_client={stream_client}
        canvasRef={canvasRef}
        socket={socket}
      />
      <Section2 socket={socket} />
    </div>
  );
};

export default Main;
