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


float var1 = 0;
for(int i=0; i<numero_comp;i++){
    float var2 = var1 + (Composiciones [i]*2*PI)/100;
    fill(arreglo_de_colores[i]);
    arc( x, y, t, t, var1, var2, PIE);
    var1 = var2;
}
  /*arc( x, y, t, t, 0, (Composiciones [0]*2*PI)/100, PIE);
  arc( x, y, t, t, (Composiciones [0]*2*PI)/100, (Composiciones [0]*2*PI)/100 + (Composiciones [1]*2*PI)/100, PIE);
  arc( x, y, t, t, (Composiciones [1]*2*PI)/100, (Composiciones [1]*2*PI)/100 + (Composiciones [2]*2*PI)/100, PIE);
  arc( x, y, t, t, (Composiciones [2]*2*PI)/100, (Composiciones [2]*2*PI)/100 + (Composiciones [3]*2*PI)/100, PIE);
  arc( x, y, t, t, (Composiciones [3]*2*PI)/100, (Composiciones [3]*2*PI)/100 + (Composiciones [4]*2*PI)/100, PIE);
  arc( x, y, t, t, (Composiciones [4]*2*PI)/100, (Composiciones [4]*2*PI)/100 + (Composiciones [5]*2*PI)/100, PIE);
  arc( x, y, t, t, (Composiciones [5]*2*PI)/100, (Composiciones [5]*2*PI)/100 + (Composiciones [6]*2*PI)/100, PIE);
  arc( x, y, t, t, (Composiciones [6]*2*PI)/100, (Composiciones [6]*2*PI)/100 + (Composiciones [7]*2*PI)/100, PIE);
  */
}
};