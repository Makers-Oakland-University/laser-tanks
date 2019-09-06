#include <Adafruit_NeoPixel.h>

#include "ps2_functions.h"
#include "zumo.h"
#include "ir.h"

#define CNTL_DELAY      20
#define LASER_DELAY     50


#define PIN A1
#define NUMPIXELS 3


Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  Serial.begin(57600);
  pinMode(PIN_LASER, OUTPUT);
  initZumo();
  initPS2();
  initIR();
  pixels.begin(); // This initializes the NeoPixel library.
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

    for (int i = 0; i < NUMPIXELS; i++) {
      pixels.setPixelColor(i, pixels.Color(255, 0, 0)); // Moderately bright green color.
      pixels.show(); // This sends the updated pixel color to the hardware.
    }

    delay(5000);
    
    for (int i = 0; i < NUMPIXELS; i++) {
      pixels.setPixelColor(i, pixels.Color(0, 255, 0)); // Moderately bright green color.
      pixels.show(); // This sends the updated pixel color to the hardware.
    }
  } else {
    hitState = false;

  }
  /*
    updatePS2(left, right);
    writeMotorSpeed(left, right);
    delay(20); */
}
