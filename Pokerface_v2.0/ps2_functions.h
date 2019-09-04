#ifndef PS2_FUNCTIONS_H
#define PS2_FUNCTIONS_H

#define PS2_CLK     2
#define PS2_CMD     11
#define PS2_SEL     4
#define PS2_DAT     5

#define PRESSURES   false
#define RUMBLE      false

//#define TEST_MODE_PS2

void initPS2();
void updatePS2(int& left, int& right, int& trig, bool hitState);
int mapY(int val);

#endif
