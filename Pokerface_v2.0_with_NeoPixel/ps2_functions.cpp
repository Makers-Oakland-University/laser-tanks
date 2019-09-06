#include "ps2_functions.h"
#include "Arduino.h"
#include "PS2X_lib.h"
#include "ir.h"

PS2X ps2x;

void initPS2() {
  int error = ps2x.config_gamepad(PS2_CLK, PS2_CMD, PS2_SEL, PS2_DAT, PRESSURES, RUMBLE);
  if (error == 0) {
    Serial.println("Found Controller, configured successful");
  }
  else {
    Serial.println("No controller found, check wiring");
  }
  Serial.println(error);
  byte type = ps2x.readType();
  switch (type) {
    case 0:
      Serial.println("Unknown Controller type");
      break;
    case 1:
      Serial.println("DualShock Controller Found");
      break;
  }
  return error;
}

void updatePS2(int& left, int& right, int& trig, bool hitState) {
  int vibrate = 0;
  bool motor = false;
  if (hitState == true) {
    vibrate = 255;
    motor = true;
  }
  
  ps2x.read_gamepad(motor, vibrate);
  
  // Update Button Presses
  int l2 = ps2x.ButtonPressed(PSB_L2);
  int r2 = ps2x.ButtonPressed(PSB_R2);
  int l1 = ps2x.ButtonPressed(PSB_L1);
  int r1 = ps2x.ButtonPressed(PSB_R1);
  int square = ps2x.ButtonPressed(PSB_PINK);
  if (l1 == 1 || r1 == 1 || r2 == 1 || l2 == 1) {
    trig = 1;
  } else {
    trig = 0;
  }

  // Update Sticks
  right = mapY(ps2x.Analog(PSS_RY));
  left = mapY(ps2x.Analog(PSS_LY));
  
  
#ifdef TEST_MODE_PS2
  static uint32_t last_ms = 0;
  uint32_t now_ms = millis();
  if (now_ms - last_ms >= 100) {
    Serial.print(left);
    Serial.print(" | ");
    Serial.println(right);
    last_ms = now_ms;
  }
  
  if (l2) Serial.println("L2 Pressed");
  if (r2) Serial.println("R2 Pressed");
  if (square) Serial.println("Square Pressed");
  
#endif
  
}

int mapY(int val) {
  int fVal;
  if (val < 127 && val >= 0) {
    fVal = map(val, 126, 0, 0, 400);
  }
  else if (val > 127 && val <= 255) {
    fVal = map(val, 128, 255, 0, -400);
  }
  else {
    fVal = 0;
  }

  return fVal;
}
