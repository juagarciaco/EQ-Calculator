class Mezcla{
  float[][] tau={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] G={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  void hacerMezcla(/*float[] componentes, float[] composiciones, float presion, float temperatura*/){
    for(int i=0;i<8;i++){
      for(int j=0;j<8;j++){
        tau[i][j]=parameter_A[i][j]+parameter_B[i][j]/(tmezcla+273.15);//Hacer con append o calcular toda la matriz 8*8?
        G[i][j]=exp(-parameter_C[i][j]*tau[i][j]);//Hacer con append o calcular toda la matriz 8*8? 
      }
    }
  }
  void comprobar(){
    println(tau[1]);
    println(G[2]);
  }
}