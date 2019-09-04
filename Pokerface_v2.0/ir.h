#ifndef IR_H
#define IR_H

#define PIN_IR        A3
#define PIN_RECEIVER  A4
#define PIN_LASER     A5

#define TEST_MODE_IR

// Variables for T2T communication
#define TANK_ID     1
// Commands
#define TANK_FIRE   1


void initIR();
unsigned long readIR();
void writeIR(unsigned long cmd);
int checkSum(unsigned long x);

#endif
