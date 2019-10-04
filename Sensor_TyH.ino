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
  //humedad = dht.readHumidity();
  temp = dht.readTemperature();

  Serial.print("Temperatura: ");
  Serial.print(temp);
  Serial.println(" C ");
  //Serial.println("%");

  delay(10);

}
