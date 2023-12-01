import React from "react";
import styles from "./style.module.scss";
import { useSendMessage } from "../../hooks";
import Stream from "../stream";

import cx from "classnames";
import { useRecoilValue } from "recoil";
import { autoPilotButtonState, driveStartButtonState, emergencyStopButtonState } from "../../stores";

const Section1 = ({ ws, client, stream_client, canvasRef, socket }) => {
  const {
    onClickDriveStartSocket,
    onClickEmergencyStopSocket,
    onClickAutoPilotSocket
  } = useSendMessage();
  const isDriveStart = useRecoilValue(driveStartButtonState);
  const isEmergencyStop = useRecoilValue(emergencyStopButtonState);
  const isAutoPilot = useRecoilValue(autoPilotButtonState);
  return (
    <div className={styles.wrapper}>
      <div className={styles.leftWrapper}>
        <div className={styles.itemWrapper}>
          <div className={styles.leftItem}>차량 리스트</div>
          <div className={styles.rightItem}>
            <div className={styles.stream}>
              <Stream client={client} canvasRef={canvasRef} />
            </div>
            <button
              className={cx(styles.driveStart, { [styles.isClick]: isDriveStart })}
              onClick={() => onClickDriveStartSocket(socket)}
            >
              Start
            </button>
            <button 
              className={cx(styles.emergencyStop, { [styles.isClick]: isEmergencyStop})} 
              onClick={() => onClickEmergencyStopSocket(socket)}
            >
              EmergencyStop
            </button>
            <button 
              className={cx(styles.autoPilot, { [styles.isClick]: isAutoPilot})} 
              onClick={() => onClickAutoPilotSocket(socket)}
            >
              AutoPilot
            </button>
          </div>
        </div>
      </div>
      <div className={styles.rightWrapper}>
        <div className={styles.itemWrapper}>
          <div className={styles.map}>지도</div>
        </div>
      </div>
    </div>
  );
};

export default Section1;
