#include <ZumoMotors.h>
#include <Pushbutton.h>
#include <QTRSensors.h>

#define THROTTLE_PIN   4 // throttle channel from RC receiver
#define STEERING_PIN   5 // steering channel from RC receiver
#define LED_PIN       13 // user LED pin

#define MAX_SPEED             400 // max motor speed
#define PULSE_WIDTH_DEADBAND  100 // pulse width difference from 1500 us (microseconds) to ignore (to compensate for control centering offset)
#define PULSE_WIDTH_RANGE     350 // pulse width difference from 1500 us to be treated as full scale input (for example, a value of 350 means
//   any pulse width <= 1150 us or >= 1850 us is considered full scale)

// Initiate Libraries
ZumoMotors motors;
Pushbutton button(ZUMO_BUTTON);

// Declare the variables
int left_speed, right_speed;
const bool flipMotors = true;

// Run setup
void setup() {
  Serial.begin(9600);
motors.flipLeftMotor(flipMotors);
motors.flipRightMotor(flipMotors);
}

void loop() {
  // put your main code here, to run repeatedly:

  // get values from two pins
      int throttle = pulseIn(THROTTLE_PIN, HIGH);
      int steering = pulseIn(STEERING_PIN, HIGH);

      if (throttle > 0 && steering > 0)
      {
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

      else
      {
        // at least one RC signal is not good; turn off LED and stop motors
        digitalWrite(LED_PIN, LOW);

        left_speed = 0;
        right_speed = 0;
      }

      // Done, write the speeds to the wheels
      ZumoMotors::setSpeeds(left_speed, right_speed);
      Serial.print(left_speed);
      Serial.print(" | ");
      Serial.println(right_speed);
}
