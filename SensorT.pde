import processing.serial.*;

Serial Puerto;
int DatoT = 0;

void setup(){
 size(500,500);

 
 String NombrePuerto = Serial.list()[0];
 Puerto = new Serial(this,NombrePuerto,9600);
}

void draw(){
  float valorAzul = int  (map(DatoT, 0, 40.00, 0, 255));
  color Fondo=color(0,0,valorAzul);
  background(Fondo);
  
  
  textSize(20);
  text("Temperatura: ",10,100);
 if(Puerto.available() > 0){
  String texto = Puerto.readStringUntil('\n');
  if(texto != null){
   DatoT = int(trim(texto)); 
   textSize(20);
   
   text(texto,100,140);
   text("grados centigrados",200,140);
  
  }
  println(DatoT);

 }
}
