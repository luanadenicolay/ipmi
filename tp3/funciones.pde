
void dibujo (int i, int j) {
  float px = i*tam;
  float py = j*tam;
  float tono = map (dist(width/2+px, height/2, mouseX, mouseY), 0, 200, 0, 255);

  fill (0);
  rect (px, py, tam, tam);
  
  fill (198, 196, 196);
  triangle (px, py, px+tam/2, py, px, py+tam/2);
  triangle (px+tam/2, py+tam, px+tam, py+tam, px+tam, py+tam/2);

  fill (tono);
  rect (px+tam/2, py, tam/2, tam/2);
}

boolean reinicio (char tecla) {
  return tecla == 'r';
}
void reiniciarVar () {
  cant =8;
  tam = width/2/cant;
}
