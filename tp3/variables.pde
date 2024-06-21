
 void dibujoCuadrado (){
   
 for (int x =0; x<cant; x++){
   for (int y =0; y<cant; y++){
     float tono = map (mouseX,0,height,255,0);             //cuadrados blancos
     noStroke ();
     fill (tono);
     rect (x*tam+tam+-tam/2,y*tam,tam/2,tam/2);
   }
 }
 } 


 void dibujoTriangulos (){
   for (int i=0; i <=cant; i++){
    for (int j=0; j<=cant; j++){ 
      
      float v1= i*tam;
      float y1 = j*tam+-tam/2;
      float v2 = i*tam+-tam/2;
      float y2 = j*tam;
      float v3 = i*tam+tam/2;
      float y3 = j*tam+tam/2;
      
      fill (198,196,196);
      triangle (v1,y2,v3,y2,v1,y3);                    //triangulo superior
      triangle (v1,y1,v2,y2,v1,y2);                    //triangulo inferior
    }
  }
 }
