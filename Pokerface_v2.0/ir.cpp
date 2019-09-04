#include "ir.h"
#include "Arduino.h"
#include "IRremote.h"

IRsend irsend;
IRrecv irrecv(A4);
decode_results results;

void initIR() {

  // Initialize Input
  irrecv.enableIRIn();
  Serial.println("IR Input Enabled");

}

unsigned long readIR() {
  unsigned long valResults;
  if (irrecv.decode(&results)) {
    valResults = results.value;
    irrecv.resume();
    #ifdef TEST_MODE_IR
      Serial.print("Received command: ");
      Serial.println(valResults, HEX);
  #endif
  return valResults;
  }
  else {
    return 0;
  }
  
}

// cmd MUST be 5 bits or less
void writeIR(unsigned long cmd) {
  
  irsend.sendNEC(0x1B, 8);
  irrecv.enableIRIn();
  #ifdef TEST_MODE_IR
      Serial.print("Sent command: ");
      Serial.println(0x1B, HEX);
  #endif
  
}

int checkSum(unsigned long x) {
  // Computing sanity check, currently adds all bits in number together then sees if even or odd
  int numBits = 0;
  for (int i = 0; i < 7; i++) {
    numBits += bitRead(x, i);
  }
  return (numBits % 2);
}
