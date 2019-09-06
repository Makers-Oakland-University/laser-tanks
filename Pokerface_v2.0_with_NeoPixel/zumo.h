#ifndef ZUMO_H
#define ZUMO_H


#define FLIP_LEFT   false
#define FLIP_RIGHT  false

// Yellow - 0, 1
// Blue - 1, 1
// Red - 0, 1
// Green - 0, 0

void killMotors();
void writeMotorSpeed(int l, int r);
void initZumo();

#endif
