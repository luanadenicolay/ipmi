//De Nicolay Luana
// tp2 Comisión 1 

PImage logo, ima, mike,boo,puerta;
PFont letra;
int tam;
int segundos; 
String estado, estado2;
String creditos;
int py;

void setup (){
size (640,480);
letra = loadFont ("letra.vlw");
textFont (letra,40);
logo = loadImage ("logo.png");
ima = loadImage ("ima.png");
mike = loadImage ("mike.png");
boo = loadImage ("boo.png");
puerta = loadImage ("puerta.png");
tam=0;
py=height;
estado= "logo"; 
estado2 = "logo";
creditos ="Directed by\n Pete Docter  David Silverman  Lee Unkrich \n Pete Docter \n Jill Culton \n Jeff Pidgeon \n Ralph Eggleston Andrew Stanton Daniel Gerson ";
}

void draw (){
  background (0);
    if (frameCount%60 ==0){      //contador 
  segundos ++;
  }
  
  if (estado2.equals ("logo")){   //estado 2
  image (logo,10,20,tam,tam);
  tam = tam+4;
 if (tam>=width){
    tam = width;
} }  if (estado2.equals ("tercera")){
    image (mike, 0,200,250,250);
} if (estado2.equals ("fin")){
  image (puerta,0,0,300,500);
}
  if (segundos<=0 ){
   estado2 = "logo";
  } else if (segundos >=4 ){
    estado2 = "tercera";
  }  if (segundos >=19){
    estado2 = "fin";
  }
  
   if (estado.equals ("ima")){   //estado
    image (ima,0,150,150,150);
 } else if (estado.equals("segunda")){
   stroke (255);
   textAlign (CENTER);
   text (creditos,300,py,270,2500);
     py --;
 } if (estado.equals("boton")){
   noFill ();
   rect(350,200,150,80);
   textAlign (LEFT);
   text ("restart",370,250);   
 }   
  if (segundos >=3 ){
  estado = "ima";
 } if (segundos >=4){
 estado = "segunda";
 } if (segundos >=19){
   estado = "boton";
 }}
   void mousePressed (){
  if (estado == "boton" && mouseX >= 350 && mouseX <=500 && mouseY >=200 && mouseY <= 280){
      estado = ("logo");
     segundos = 0;
     frameCount=0;
     py =height;
     tam = 0;  
  
}}
