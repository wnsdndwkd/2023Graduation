import { crc32 } from "crc";

export function useCalcCrc() {
  const makeMsg = ({ data, type }) => {
    const msg = {
      data: data,
      type: type,
    };
    const crc = crc32(JSON.stringify(msg)).toString(16);
    const crcMsg = {
      crc: crc,
      data: data,
      type: type,
    };
    return crcMsg;
  };

  const makeMsgS = ({ data }) => {
    const webTime = new Date().getTime();
    const msg = {
      data: data,
      web_time: webTime,
    };
    const crc = crc32(JSON.stringify(msg)).toString(16);
    const crcMsgS = JSON.stringify({
      crc: crc,
      data: data,
      web_time: webTime,
    });
    return crcMsgS;
  };

  return {
    makeMsg,
    makeMsgS,
  };
}
