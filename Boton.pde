import processing.serial.*;

Serial myPort;
String Dato;
int Boton = 0;
int Off=0;

void setup(){
 size(200,200);
 String nombrePuerto = Serial.list()[0];
 myPort = new Serial(this, nombrePuerto, 9600);
 myPort.bufferUntil('\n');
}

void draw(){
  if(Dato != null){
    Boton = int(Dato.substring (1,2));
    Off = int(Dato.substring (1,2));
    if(Boton == 1){
      fill(0,0,255);
    }
    else{
     fill(0);
     rect(50,50,100,100);
    }
    if(Off ==0){
     fill(0); 
    }
   else{
    fill(0,0,255);
    rect(50,50,100,100);
   }
  }
}
void serialEvent(Serial myPort){
   Dato = myPort.readString(); 
}
