#include <ZumoMotors.h>
#include <Pushbutton.h>
#include <QTRSensors.h>
#include <PS2X_lib.h>
#include <IRremote.h>
//#include <Wire.h> ????

#define RECV_PIN 7 //IR receiver 
#define MAX_SPEED 400 // max motor speed

// Initiate Libraries
ZumoMotors motors;
Pushbutton button(ZUMO_BUTTON);
IRrecv irrecv(RECV_PIN);
decode_results results;
PS2X ps2x;

// Declare the variables
int left_speed = 0, right_speed = 0;
const bool flipMotors = true;

int error = 0;
byte type = 0;
byte vibrate = 0;

void setup() {

  irrecv.enableIRIn();
  
  motors.flipLeftMotor(flipMotors);
  motors.flipRightMotor(flipMotors);
  
  //set speed of both motors to Zero
  ZumoMotors::setSpeeds(left_speed, right_speed);

  Serial.begin(57600);
  error = ps2x.config_gamepad(13, 11, 2, 12, true, true);
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
      if (ps2x.ButtonPressed(PSB_L2)) {
        Serial.println("L2 pressed");
      }
      if (ps2x.ButtonPressed(PSB_R2)) {
        Serial.println("R2 pressed");
      }
      if (ps2x.Button(PSB_SELECT)){
        for (int i = 0; i<100;i++){
          Serial.println(""); //clear output for debugging
        }
      }
      if (ps2x.Button(PSB_PINK)){
        Serial.print("Square");
      }
    }

    //The good stuff
    
    // Y values = {forward: 0, center: 127, backward: 255}
    
    //Forward: 127->0 to 0->400
    //Fspeed = -3*(y-127)+19  ---> = 400 -3*forward
    
    //Backward: 127->255 to 0->-400
    //Bspeed = 3*(127-y)-16 ---> = 365-3*backward
    
    if (ps2x.Button(PSB_L1) || ps2x.Button(PSB_R1)) { 
      if (ps2x.Analog(PSS_RY) < 127) {  //RIGHT JOYSTICK FORWARD
        int rf = ps2x.Analog(PSS_RY);
        int pwm = 400-3*rf;
        Serial.print("Right forward: ");
        Serial.println(pwm);
        motors.setRightSpeed(pwm);
        if (ps2x.Analog(PSS_LY) < 127) {      //both forward 
          int lf = ps2x.Analog(PSS_LY);
          int pwm2 = 400-3*lf;
          Serial.print("left forward: ");
          Serial.println(pwm2);
          motors.setLeftSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_LY) > 127) { //Rgiht forward left back -> car will go left
          int lb = ps2x.Analog(PSS_LY);
          int pwm3 = 365-3*lb;
          Serial.print("left backward: ");
          Serial.println(pwm3);
          motors.setLeftSpeed(pwm3);
        }
      }
      else if (ps2x.Analog(PSS_RY) > 127) { //RIGHT JOYSTICK BACKWARD
        int rb = ps2x.Analog(PSS_RY);
        int pwm = 365-3*rb;
        Serial.print("right backward: ");
        Serial.println(pwm);
        motors.setRightSpeed(pwm);
        if (ps2x.Analog(PSS_LY) > 127) { //both back-> car will go backward
          int lb = ps2x.Analog(PSS_LY);
          int pwm2 = 365-3*lb;
          Serial.print("left backward: ");
          Serial.println(pwm2);
          motors.setLeftSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_LY) < 127) { // right back, left forward -> car will go right
          int lf = ps2x.Analog(PSS_LY);
          int pwm3 = 400-3*lf;
          Serial.print("left forward: ");
          Serial.println(pwm3);
          motors.setLeftSpeed(pwm3);
        }
      }
      else if (ps2x.Analog(PSS_LY) < 127) { //LEFT JOYSTICK FORWARD
        int lf = ps2x.Analog(PSS_LY);
        int pwm = 400-3*lf;
        Serial.print("left forward: ");
        Serial.println(pwm);
        motors.setLeftSpeed(pwm);
        if (ps2x.Analog(PSS_RY) < 127) { // both forward-> car will go forward
          int rf = ps2x.Analog(PSS_RY);
          int pwm2 = 400 -3*rf;
          Serial.print("right forward: ");
          Serial.println(pwm2);
          motors.setRightSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_RY) > 127) { // left forward, right back-> car will go right
          int rb = ps2x.Analog(PSS_RY);
          int pwm3 = 365-3*rb;
          Serial.print("right backward: ");
          Serial.println(pwm3);
          motors.setRightSpeed(pwm3);
        }
      }
      else if (ps2x.Analog(PSS_LY) > 127) { //LEFT JOYSTICK BACKWARD
        int lb = ps2x.Analog(PSS_LY);
        int pwm = 365-3*lb;
        Serial.print("left backward: ");
        Serial.println(pwm);
        motors.setLeftSpeed(pwm);
        if (ps2x.Analog(PSS_RY) > 127) { // both back -> car will go backward
          int rb = ps2x.Analog(PSS_RY);
          int pwm2 = 365-3*rb;
          Serial.print("right backward: ");
          Serial.println(pwm2);
          motors.setRightSpeed(pwm2);
        }
        else if (ps2x.Analog(PSS_RY) < 127) { // left back,right forward-> car will go left
          int rf = ps2x.Analog(PSS_RY);
          int pwm3 = 400-3*rf;
          Serial.print("right forward: ");
          Serial.println(pwm3);
          motors.setRightSpeed(pwm3);
        }
      }
      else {
        //left_speed = 0;
        //right_speed = 0;
        // Done, write the speeds to the wheels
        ZumoMotors::setSpeeds(left_speed, right_speed);
      }
    }
  }
   while (irrecv.decode(&results)){
      Serial.println(results.value);
      irrecv.resume();
    }
  delay(20);
}







/*
      //TAKEN FROM LOOP FIRST IF* 7-18-19 9:14pm

      #define THROTTLE_PIN   4 // throttle channel from RC receiver
      #define STEERING_PIN   5 // steering channel from RC receiver
      #define LED_PIN       13 // user LED pin
      #define PULSE_WIDTH_DEADBAND  100 // pulse width difference from 1500 us (microseconds) to ignore (to compensate for control centering offset)
      #define PULSE_WIDTH_RANGE     350 // pulse width difference from 1500 us to be treated as full scale input (for example, a value of 350 means
      //   any pulse width <= 1150 us or >= 1850 us is considered full scale)



      // get values from two pins
      int throttle = pulseIn(THROTTLE_PIN, HIGH);
      int steering = pulseIn(STEERING_PIN, HIGH);
      if (throttle > 0 && steering > 0){
        // both RC signals are good; turn on LED
        digitalWrite(LED_PIN, HIGH);
        // RC signals encode information in pulse width centered on 1500 us (microseconds); subtract 1500 to get a value centered on 0
        throttle -= 1500;
        steering -= 1500;
        // apply deadband
        if (abs(throttle) <= PULSE_WIDTH_DEADBAND)
          throttle = 0;
        if (abs(steering) <= PULSE_WIDTH_DEADBAND)
          steering = 0;
        // mix throttle and steering inputs to obtain left & right motor speeds
        left_speed = ((long)throttle * MAX_SPEED / PULSE_WIDTH_RANGE) - ((long)steering * MAX_SPEED / PULSE_WIDTH_RANGE);
        right_speed = ((long)throttle * MAX_SPEED / PULSE_WIDTH_RANGE) + ((long)steering * MAX_SPEED / PULSE_WIDTH_RANGE);
        // cap speeds to max
        left_speed = min(max(left_speed, -MAX_SPEED), MAX_SPEED);
        right_speed = min(max(right_speed, -MAX_SPEED), MAX_SPEED);
      }
*/
