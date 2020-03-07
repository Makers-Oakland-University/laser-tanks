#ifndef ZUMO_H
#define ZUMO_H


#define FLIP_LEFT   true
#define FLIP_RIGHT  true

// Yellow - 0, 1
// Blue - 1, 1
// Red - 0, 1
// Green - 0, 0

void killMotors();
void writeMotorSpeed(int l, int r);
void initZumo();

#endif
