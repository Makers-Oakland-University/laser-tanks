#include "zumo.h"
#include "Arduino.h"

#include <ZumoMotors.h>
#include <Pushbutton.h>
#include <QTRSensors.h>

ZumoMotors motors;
Pushbutton button(ZUMO_BUTTON);

void killMotors() {
  motors.setSpeeds(0, 0);
}

void writeMotorSpeed(int l, int r) {
  l = constrain(l, -400, 400);
  r = constrain(r, -400, 400);

  motors.setLeftSpeed(l);
  motors.setRightSpeed(r);
}

void initZumo() {
  // Flip the motors
  motors.flipLeftMotor(FLIP_LEFT);
  motors.flipRightMotor(FLIP_RIGHT);
  // Ensure motors do not start at startup
  killMotors();
}
