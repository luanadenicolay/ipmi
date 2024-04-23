// De Nicolay Luana 
// tp1 comisión 1 
 PImage fondo;
void setup (){
  size (800,400);
  background (177);

 fondo = loadImage("descarga.jpg");
  
}
void draw (){
 background (200);
image (fondo,0,0,400,400);
noStroke();
fill (152,100,78);
 circle (590,250,200); //cuerpo
 quad (517,68,537,41,540,114,520,150); //oreja derecha
 triangle (515,94,500,120,500,45 ); // oreja izquierda
 quad (523,349,551,349,562,315,541,317 ); //pata principal
 quad (512,345,551,345,545,315,530,317); // pata lejos
 quad (647,351,614,351,602,317,644,323); // pata trasera
 fill (227,202,192);   //pecho
 noStroke ();
 ellipse (516,258,56,100);
 triangle (562,347,612,347,586,306); 
 ellipse (587,346,50,10);
 fill (178,129,108);
 ellipse (510,170,90,130); //cara
 fill (0);
 stroke(0);
 ellipse (514,156,15,23); // ojo
 line (480,186,483,193); // nariz
 line (483,193,486,186);
 line (483,190,483,200);
 noStroke();
 fill (178,129,108);
 triangle (511,168,525,158,518,176);
 
}
