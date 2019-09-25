
const int botonPin = 2;     
const int ledPin =  13;      

int estadoBoton = 0;         

void setup() {
  Serial.begin(9600);
 
  pinMode(ledPin, OUTPUT);
  pinMode(botonPin, INPUT);
}

void loop() {
 
  estadoBoton = digitalRead(botonPin);

  if (estadoBoton == HIGH) {
    
    digitalWrite(ledPin, HIGH);
    Serial.println("B1");
  } 
  else {
    digitalWrite(ledPin, LOW);
    Serial.println("OFF");
  }
}
