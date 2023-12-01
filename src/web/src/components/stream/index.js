import React from "react";
import jsmpeg from "jsmpeg";
import styles from "./style.module.scss";

const Stream = ({ client, canvasRef }) => {
  const [canvasTag, setCanvasTag] = React.useState([]);

  React.useEffect(() => {
    const canvas = canvasRef.current;
    canvas.width = window.innerWidth * 0.5;
    canvas.height = window.innerHeight;
    setCanvasTag(canvas);
  }, [canvasRef]);

  const canvass = document.querySelector("canvas");
  const player = new jsmpeg(client, {
    canvas: canvass,
    autoplay: true,
  });
  return (
    <div className={styles.wrapper}>
      <canvas
        className={styles.canvas}
        id="videoCanvas"
        ref={canvasRef}
        width="300"
        height="300"
      ></canvas>
    </div>
  );
};

export default Stream;
