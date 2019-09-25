int Pot = A0;

void setup() {
  pinMode(Pot, INPUT);
  Serial.begin(9600);

}

void loop() {
  int Valor = analogRead(Pot);
  Serial.println(Valor);
  delay(100);
}
