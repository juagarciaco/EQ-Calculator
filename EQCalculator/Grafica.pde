class Grafica{
  
  void dibujar(int x, int y, int t){
  color c1 = color(255, 0, 0);
  color c2 = color(0, 255, 0); 
  color c3 = color(0, 0, 255);
  color c4 = color(255, 255, 0); 
  color c5 = color(255, 0, 255);
  color c6 = color(0, 255, 255);
  color c7 = color(255, 120, 0);
  color c8 = color(0,120,255);
  color [] arreglo_de_colores={c1, c2, c3, c4, c5, c6, c7, c8};


pushStyle();
fill(102,255,255);
georgia = createFont("georgia", 25);
   textFont(georgia);
 text("Representacion de composiciones", 800, 275);
    popStyle();
float var1 = 0;
for(int i=0; i<numero_comp;i++){
    float var2 = var1 + (Composiciones [i]*2*PI);
    fill(arreglo_de_colores[i]);
    rect(1200, 350+(20*i), 10, 10);
    text(Nombres_2[i], 1220, 360+(20*i));
    arc( x, y, t, t, var1, var2, PIE);
    var1 = var2;
}
}
}