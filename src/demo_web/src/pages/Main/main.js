import React, { useState, useEffect } from 'react';
import { Line } from 'react-chartjs-2';
import io from 'socket.io-client';

const socket = io.connect('http://localhost:9000'); // 소켓 연결

const App = () => {
  // const [data, setData] = useState([]);
  // const [chartData, setChartData] = useState({});

  // 버튼 클릭 핸들러 - 서버로 데이터 요청
  // const fetchData = () => {
  //   socket.emit('getData'); // 서버에 데이터 요청 이벤트 전송
  // };

  useEffect(() => {
    socket.connect(() => {
      console.log(" << SERVER CONNECT >>");
    });

    socket.on("error", (error) =>{
      console.error(error);
    })
    socket.on("Vehicle_Info_Web", (msg) => {
      console.log(msg);
    });
  }, []);

  // 서버로부터 데이터 수신

  return (
    <div>
    </div>
  );
};

export default App;