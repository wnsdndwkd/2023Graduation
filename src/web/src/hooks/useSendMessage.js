import React from "react";
import { useCalcCrc } from "./useCalcCrc";
import { useRecoilState } from "recoil";
import { driveStartButtonState, emergencyStopButtonState, autoPilotButtonState } from "../stores";

export function useSendMessage() {
  const { makeMsg, makeMsgS } = useCalcCrc();
  const [isDriveStart, setIsDriveStart] = useRecoilState(driveStartButtonState);
  const [isEmergencyStop, setIsEmergencyStop] = useRecoilState(emergencyStopButtonState);
  const [isAutoPilot, setIsAutoPilot] = useRecoilState(autoPilotButtonState);
  
  const onClickDriveStartSocket = (socket) => {
    socket.emit("drive_start", makeMsgS({ data: "drive_start" }));
    setIsDriveStart(!isDriveStart);
  };

  const onClickEmergencyStopSocket = (socket) => {
    socket.emit("emergency_stop_start", makeMsgS({ data: "emergency_stop_start" }));
    setIsEmergencyStop(!isEmergencyStop);
  };

  const onClickAutoPilotSocket = (socket) => {
    socket.emit("auto_pilot_start", makeMsgS({ data: "auto_pilot_start" }));
    setIsAutoPilot(!isAutoPilot);
  };

  return {
    onClickDriveStartSocket,
    onClickEmergencyStopSocket,
    onClickAutoPilotSocket,
  };
}
