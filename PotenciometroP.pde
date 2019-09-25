import processing.serial.*;

Serial Puerto;
int Valor = 0;

void setup(){
 size(500,500);
 String NombreP = Serial.list()[0];
 Puerto = new Serial(this,NombreP,9600);
}

void draw(){
  int valorRojo = int  (map(Valor, 0, 1023, 0, 255));
  color Fondo=color(valorRojo,0,0);
  background(Fondo);
  
 if(Puerto.available() > 0){
  String texto = Puerto.readStringUntil('\n');
  if(texto != null){
   Valor = int(trim(texto)); 
   textSize(100);
   text(texto,100,200);
  }
  println(Valor);

 }
}
