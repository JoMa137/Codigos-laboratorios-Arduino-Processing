import processing.serial.*;

boolean EstadoBoton;

Serial mySerial;
color ColorEncendido= color(200,0,0);
color ColorApagado= color(0);

void setup(){
  size(200,200);
  String NombrePuerto = Serial.list()[0];
  mySerial = new Serial(this, NombrePuerto, 9600);
  
}

void draw(){
   background(255);
   if(EstadoBoton){
     fill(ColorEncendido);
   }
   else{
     fill(ColorApagado);
   }
   ellipse(100,100,60,60);
  
}

void mouseClicked(){
 float distancia = dist(100,100,mouseX,mouseY);
 if(distancia<30){
    EstadoBoton= !EstadoBoton;
    mySerial.write('a');
 }
}
