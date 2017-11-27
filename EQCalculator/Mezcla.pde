class Mezcla{
  float [] a={0,0,0,0,0,0,0,0},b={0,0,0,0,0,0,0,0},c={0,0,0,0,0,0,0,0},aint={0,0,0,0,0,0,0,0},bint={0,0,0,0,0,0,0,0},gamma={0,0,0,0,0,0,0,0};  
  float[][] tau={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] G={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  void hacerMezcla(/*float[] componentes, float[] composiciones, float presion, float temperatura*/){
    for(int i=0;i<8;i++){
      for(int j=0;j<8;j++){
        tau[i][j]=parameter_A[i][j]+parameter_B[i][j]/(tmezcla+273.15);//Hacer con append o calcular toda la matriz 8*8?
        G[i][j]=exp(-parameter_C[i][j]*tau[i][j]);//Hacer con append o calcular toda la matriz 8*8? 
      }
    }
  for(int i=0;i<numero_comp;i++){
    a[i]=0;
    b[i]=0;
    c[i]=0;
    for(int j=0;j<numero_comp;j++){
      a[i]=a[i]+Composiciones[j]*tau[j][i]*G[j][i];
      b[i]=b[i]+Composiciones[j]*G[j][i];
    }
      for(int j=0; j<numero_comp; j++){
        aint[j]=0;
        bint[j]=0;
        for (int m=0; m<numero_comp; m++){
          aint[j]=aint[j]+Composiciones[m]*tau[m][j]*G[m][j];
          bint[j]=bint[j]+Composiciones[m]*G[m][j];
        }
        c[i]=c[i]+(Composiciones[j]*G[i][j]/bint[j])*(tau[i][j]-aint[j]/bint[j]);
      }    
    gamma[i]=exp(a[i]/b[i]+c[i]);  
  }
  }
  
  void comprobar(){
    //println(tau[1]);
    //println(G[2]);
    
    for(int i=0;i<numero_comp;i++){
      println(gamma[i]);
      //println(tau[i]);
      //println(G[i]);
      
    }
  }
}