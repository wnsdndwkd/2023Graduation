import { atom } from "recoil";

export const velocityState = atom({
  key: "velocity",
  default: "0",
});

export const systemState = atom({
  key: "systemState",
  default: "통신대기중",
});

export const vehicleXCoordinateState = atom({
  key: "x_coordinate",
  default: "0",
});

export const vehicleYCoordinateState = atom({
  key: "y_coordinate",
  default: "0",
});

export const vehicleZCoordinateState = atom({
  key: "z_coordinate",
  default: "0",
});

export const eventLogState = atom({
  key: "eventLog",
  default: [],
});

export const driveStartButtonState = atom({
  key: "driveStart",
  default: false,
});

export const emergencyStopButtonState = atom({
  key: "emergencyStop",
  default: false,
})

export const autoPilotButtonState = atom({
  key: "autoPilot",
  default: false,
})

