// Luana De Nicolay
// comision 1
// https://youtu.be/ZTwK5B6D-1A
  
PImage imagen;
int cant;
float tam;

void setup () {
  size (800, 400);
  imagen = loadImage ("imagen.jpeg");
  cant = 8;
  tam = width/2/cant;
}

void draw () {  
  background (0);
  image (imagen, 0, 0, 400, 400);
  translate (400, 0);
  
  for (int i=0; i<=8; i++) {
    for (int j=0; j<=8; j++) {
      noStroke ();
      dibujo(i, j);

      if ((keyPressed == true) && (key == 't')) {
        tam = tam+0.1;
      } else if (reinicio (key)) {
        reiniciarVar();
      }
    }
  }
}
