import React from "react";
import styles from "./style.module.scss";
import cx from "classnames";
import { useRecoilValue } from "recoil";

import { useSendMessage } from "../../hooks";
import {
  eventLogState,
  systemState,
  velocityState,
  vehicleXCoordinateState,
  vehicleYCoordinateState,
  vehicleZCoordinateState
} from "../../stores";
import { ImageCar } from "../../assets/Images";

const Section2 = ({ ws, socket }) => {

  const velocity = useRecoilValue(velocityState);
  const system = useRecoilValue(systemState);
  const eventLog = useRecoilValue(eventLogState);
  const x_coordinate = useRecoilValue(vehicleXCoordinateState);
  const y_coordinate = useRecoilValue(vehicleYCoordinateState);
  const z_coordinate = useRecoilValue(vehicleZCoordinateState);

  return (
    <div className={styles.wrapper}>
      <div className={styles.leftItem}>
        <img src={ImageCar} alt="car" className={styles.fodro} />
        <div className={styles.stateWrapper}>
          <p className={styles.label}>속도</p>
          <p className={styles.info}>{velocity} km/h</p>
        </div>
        <div className={styles.stateWrapper}>
          <p className={styles.label}>시스템상태</p>
          <p className={styles.info}>{system}</p>
        </div>
      </div>
      <div className={styles.rightItem}>
        <div className={styles.bottomWrapper}>
          <div className={styles.carState}>
            <p className={styles.title}>차량 운행 정보</p>
            <div className={styles.tableWrapper}>
              <table>
                <thead>
                  <tr>
                    <th>x</th>
                    <th>y</th>
                    <th>z</th>
                  </tr>
                </thead>
                <tbody>
                  <td className={styles.td}>{x_coordinate}</td>
                  <td className={styles.td}>{y_coordinate}</td>
                  <td className={styles.td}>{z_coordinate}</td>
                </tbody>
              </table>
            </div>
          </div>

          <div className={styles.alarm}>
            <p className={styles.title}>Event Log</p>
            <div className={styles.tableWrapper}>
              <table>
                <thead>
                  <tr>
                    <th>EventId</th>
                    <th>발생시간</th>
                    <th>위치</th>
                    <th>속도</th>
                  </tr>
                </thead>
                <tbody>
                  {eventLog.map((log) => (
                    <tr className={styles.tr} key={log.id}>
                      <td className={styles.td}>{log.id}</td>
                      <td className={styles.td}></td>
                      <td className={styles.td}>{log.class}</td>
                      <td className={styles.td}></td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  );
};

export default Section2;
