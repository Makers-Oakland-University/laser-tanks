#include "ps2_functions.h"
#include "zumo.h"
#include "ir.h"

#define CNTL_DELAY      20
#define LASER_DELAY     50

void setup() {
  Serial.begin(57600);
  pinMode(PIN_LASER, OUTPUT);
  initZumo();
  initPS2();
  initIR();
}


void loop() {
  
  unsigned long now_ms = millis();
  static unsigned long cntl_ms, laser_ms, trig_ms, msg_ms = 0;
  static int trig = 0;
  static bool laserState = false;
  static bool hitState = false;

  // Update controller/motors
  if (now_ms -  cntl_ms >= CNTL_DELAY) {
    int left, right = 0;
    updatePS2(left, right, trig, hitState);
    if (trig == 1) {
      digitalWrite(PIN_LASER, HIGH);
      writeIR(TANK_FIRE);
    } else {
      digitalWrite(PIN_LASER, LOW);
    }
    writeMotorSpeed(left, right);
    cntl_ms = now_ms;
  }

  // Check for new data
    unsigned long msg = 0;
    msg = readIR();
    if (msg != 0 && msg == 0x1AF66ED4) {
        hitState = true;
        Serial.println(msg, HEX);
        writeMotorSpeed(400, -400);
        delay(5000);
    } else {
      hitState = false;
    }
  /*
  updatePS2(left, right);
  writeMotorSpeed(left, right);
  delay(20); */
}
