#include <Servo.h>
Servo servo1;

int angulo=0;
int posX=A0;
int posY=A1;
int boton=4;
int led=12;

void setup() {
  servo1.attach(6);
  pinMode(boton, INPUT_PULLUP);
  pinMode(led,OUTPUT);
}
void loop() {
  angulo = map(analogRead(A0),0,1023,0,180);
  servo1.write(angulo);


  if( !digitalRead(boton)){
    digitalWrite(led,HIGH);
  }
  else { 
    digitalWrite(led,LOW);
    delay(250);
  }
}
