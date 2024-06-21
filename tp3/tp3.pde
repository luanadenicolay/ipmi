// Luana De Nicolay
// comisión 1
// https://youtu.be/o9BQnvX3dt8

PImage imagen;
int cant = 8;
int tam;

void setup (){
 size (800,400); 
  imagen = loadImage ("imagen.jpeg");
  tam = width/2/cant;
} 

void draw (){
  
 pushMatrix ();
 background (0);
 translate (400,0); 
 
 dibujoCuadrado ();
 dibujoTriangulos (); 
 popMatrix ();
 
 image (imagen, 0,0,400,400);
   
if ((keyPressed == true) && (key == 't')){
    tam ++ ;
  } else if ((keyPressed == true) && (key == 'b')){
    tam = width/2/cant;
  }
  


}
