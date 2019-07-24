#include <IRremote.h>
#define RECV_PIN 7  
IRrecv irrecv(RECV_PIN);
decode_results results;

#include "ps2_functions.h"
#include "zumo.h"

void setup() {
  Serial.begin(57600);
  irrecv.enableIRIn();
  initZumo();
  initPS2();
}


void loop() {
  int left, right = 0;
  updatePS2(left, right);
  writeMotorSpeed(left, right);
  while (irrecv.decode(&results)) {
    Serial.println(results.value);
    irrecv.resume();
  }
  delay(20);
}
