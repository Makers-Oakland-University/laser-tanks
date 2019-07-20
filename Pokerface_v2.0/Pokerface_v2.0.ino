#include <ZumoMotors.h>
#include <Pushbutton.h>
#include <QTRSensors.h>
#include <PS2X_lib.h>
#include <IRremote.h>++
#define RECV_PIN 7  
ZumoMotors motors;
Pushbutton button(ZUMO_BUTTON);
IRrecv irrecv(RECV_PIN);
decode_results results;
PS2X ps2x;

// Declare the variables
int left_speed = 0, right_speed = 0;

//changed to false 7/20 
const bool flipMotors = false;

int error = 0;
byte type = 0;
byte vibrate = 0;

void right_f(){
  int rf = ps2x.Analog(PSS_RY);
  int pwmRF = map(rf,126,0,0,400);
  motors.setRightSpeed(pwmRF);
  Serial.println(pwmRF);
}
void left_f(){
  int lf = ps2x.Analog(PSS_LY);
  int pwmLF = map(lf,126,0,0,400);
  motors.setLeftSpeed(pwmLF);
}
void right_b(){
  int rb = ps2x.Analog(PSS_RY);
  int pwmRB = map(rb,128,255,0,-400);
  motors.setRightSpeed(pwmRB);
}
void left_b(){
  int lb = ps2x.Analog(PSS_LY);
  int pwmLB = map(lb,128,255,0,-400);
  motors.setLeftSpeed(pwmLB);
}
void stop_moving(){
  motors.setLeftSpeed(0);
  motors.setRightSpeed(0);
}

void setup() {


  irrecv.enableIRIn();

  motors.flipLeftMotor(flipMotors);
  motors.flipRightMotor(flipMotors);

  //set speed of both motors to Zero
  stop_moving();


  Serial.begin(57600);
  error = ps2x.config_gamepad(2, 11, 4, 5, true, true);
  //error = ps2x.config_gamepad(13, 11, 8, 12, true, true);
  if (error == 0) {
    Serial.println("Found Controller, configured successful");
  }
  else {
    Serial.println("No controller found, check wiring");
  }
  type = ps2x.readType();
  switch (type) {
    case 0:
      Serial.println("Unknown Controller type");
      break;
    case 1:
      Serial.println("DualShock Controller Found");
      break;
  }
}


void loop() {
  if (error == 1) {
    return;
  }
  if (type == 2) {
    Serial.println("error");
  }
  else {
    ps2x.read_gamepad();
    vibrate = ps2x.Analog(PSAB_BLUE);
    if (ps2x.NewButtonState()) {
      if (ps2x.Button(PSB_SELECT)) {
        for (int i = 0; i < 100; i++) {
          Serial.println(""); //clear output for debugging
        }
        ZumoMotors::setSpeeds(0,0);
      }
      if (ps2x.Button(PSB_L2)) {
        Serial.println("L2 pressed");
      }
      if (ps2x.Button(PSB_R2)) {
        Serial.println("R2 pressed");
      }
      if (ps2x.Button(PSB_PINK)) {
        Serial.println("Square");
      }
    }
    
    //Joysticks
    
    if (ps2x.Button(PSB_L1) || ps2x.Button(PSB_R1)) {
      if (ps2x.Analog(PSS_RY) < 127) {
        //RIGHT JOYSTICK FORWARD
        right_f();
        if (ps2x.Analog(PSS_LY) < 127) {      //both forward
          left_f();
        }
        else if (ps2x.Analog(PSS_LY) > 127) { //Rgiht forward left back -> car will go left
          left_b();
        }
      }
      else if (ps2x.Analog(PSS_RY) > 127) { //RIGHT JOYSTICK BACKWARD
        right_b();
        if (ps2x.Analog(PSS_LY) > 127) { //both back-> car will go backward
          left_b();
        }
        else if (ps2x.Analog(PSS_LY) < 127) { // right back, left forward -> car will go right
          left_f();
        }
      }
      else if (ps2x.Analog(PSS_LY) < 127) { //LEFT JOYSTICK FORWARD
        left_f();
        if (ps2x.Analog(PSS_RY) < 127) { // both forward-> car will go forward
          right_f();
        }
        else if (ps2x.Analog(PSS_RY) > 127) { // left forward, right back-> car will go right
          right_b();
        }
      }
      else if (ps2x.Analog(PSS_LY) > 127) { //LEFT JOYSTICK BACKWARD
        left_b();
        if (ps2x.Analog(PSS_RY) > 127) { // both back -> car will go backward
          right_b();
        }
        else if (ps2x.Analog(PSS_RY) < 127) { // left back,right forward-> car will go left
          right_f();
        }
      }
      else {
        stop_moving();
      }
    }
  }
  while (irrecv.decode(&results)) {
    Serial.println(results.value);
    irrecv.resume();
  }
  delay(20);
}

//shortened this beefy code 7-20-19
  // Y values = {forward: 0, center: 127, backward: 255}
  //Forward: 127->0 to 0->400
  //Fspeed = -3*(y-127)+19  ---> = 400 -3*forward

  //Backward: 127->255 to 0->-400
  //Bspeed = 3*(127-y)-16 ---> = 365-3*backward
/*
 if (ps2x.Button(PSB_L1) || ps2x.Button(PSB_R1)) {
      if (ps2x.Analog(PSS_RY) < 127) {
        //RIGHT JOYSTICK FORWARD
        int rf = ps2x.Analog(PSS_RY);
        int pwm = 400 - 3 * rf;
        Serial.print("Right forward: ");
        Serial.println(pwm);
        motors.setRightSpeed(pwm);
        if (ps2x.Analog(PSS_LY) < 127) {      //both forward
          int lf = ps2x.Analog(PSS_LY);
          int pwm2 = 400 - 3 * lf;
          Serial.print("left forward: ");
          Serial.println(pwm2);
          motors.setLeftSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_LY) > 127) { //Rgiht forward left back -> car will go left
          int lb = ps2x.Analog(PSS_LY);
          int pwm3 = 365 - 3 * lb;
          Serial.print("left backward: ");
          Serial.println(pwm3);
          motors.setLeftSpeed(pwm3);
        }
      }
      else if (ps2x.Analog(PSS_RY) > 127) { //RIGHT JOYSTICK BACKWARD
        int rb = ps2x.Analog(PSS_RY);
        int pwm = 365 - 3 * rb;
        Serial.print("right backward: ");
        Serial.println(pwm);
        motors.setRightSpeed(pwm);
        if (ps2x.Analog(PSS_LY) > 127) { //both back-> car will go backward
          int lb = ps2x.Analog(PSS_LY);
          int pwm2 = 365 - 3 * lb;
          Serial.print("left backward: ");
          Serial.println(pwm2);
          motors.setLeftSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_LY) < 127) { // right back, left forward -> car will go right
          int lf = ps2x.Analog(PSS_LY);
          int pwm3 = 400 - 3 * lf;
          Serial.print("left forward: ");
          Serial.println(pwm3);
          motors.setLeftSpeed(pwm3);
        }
      }
      else if (ps2x.Analog(PSS_LY) < 127) { //LEFT JOYSTICK FORWARD
        int lf = ps2x.Analog(PSS_LY);
        int pwm = 400 - 3 * lf;
        Serial.print("left forward: ");
        Serial.println(pwm);
        motors.setLeftSpeed(pwm);
        if (ps2x.Analog(PSS_RY) < 127) { // both forward-> car will go forward
          int rf = ps2x.Analog(PSS_RY);
          int pwm2 = 400 - 3 * rf;
          Serial.print("right forward: ");
          Serial.println(pwm2);
          motors.setRightSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_RY) > 127) { // left forward, right back-> car will go right
          int rb = ps2x.Analog(PSS_RY);
          int pwm3 = 365 - 3 * rb;
          Serial.print("right backward: ");
          Serial.println(pwm3);
          motors.setRightSpeed(pwm3);
        }
      }
      else if (ps2x.Analog(PSS_LY) > 127) { //LEFT JOYSTICK BACKWARD
        int lb2 = ps2x.Analog(PSS_LY);
        int pwm = 365 - 3 * lb2;
        Serial.print("left backward: ");
        Serial.println(pwm);
        motors.setLeftSpeed(pwm);
        if (ps2x.Analog(PSS_RY) > 127) { // both back -> car will go backward
          int rb = ps2x.Analog(PSS_RY);
          int pwm2 = 365 - 3 * rb;
          Serial.print("right backward: ");
          Serial.println(pwm2);
          motors.setRightSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_RY) < 127) { // left back,right forward-> car will go left
          int rf = ps2x.Analog(PSS_RY);
          int pwm3 = 400 - 3 * rf;
          Serial.print("right forward: ");
          Serial.println(pwm3);
          motors.setRightSpeed(pwm3);
        }
      }
 */
