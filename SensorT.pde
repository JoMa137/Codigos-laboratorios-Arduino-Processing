import processing.serial.*;

Serial Puerto;
int DatoT = 0;

void setup(){
 size(500,500);
 String NombrePuerto = Serial.list()[0];
 Puerto = new Serial(this,NombrePuerto,9600);
}

void draw(){
  int valorAzul = int  (map(DatoT, 0, 40, 0, 255));
  color Fondo=color(0,0,valorAzul);
  background(Fondo);
  
 if(Puerto.available() > 0){
  String texto = Puerto.readStringUntil('\n');
  if(texto != null){
   DatoT = int(trim(texto)); 
   textSize(20);
   text(texto,40,40);
   text("grados centigrados",80,100);
  }
  println(DatoT);

 }
}
