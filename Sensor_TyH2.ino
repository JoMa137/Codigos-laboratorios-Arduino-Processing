#include <DHT.h>
#include <DHT_U.h>

int Sensor = A2;
float temp, humedad;

DHT dht(Sensor, DHT11);

void setup() {
  pinMode(Sensor,INPUT);
  Serial.begin(9600);
  dht.begin();

}

void loop() {
  
       temp = dht.readTemperature();

      //Serial.print("Temperatura: ");
        Serial.print(temp);
        Serial.println(" C ");
        delay(10);
    
  

}
