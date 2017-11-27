class MezclaLiq{
  float [] a={0,0,0,0,0,0,0,0},b={0,0,0,0,0,0,0,0},c={0,0,0,0,0,0,0,0},aint={0,0,0,0,0,0,0,0},bint={0,0,0,0,0,0,0,0},gamma={0,0,0,0,0,0,0,0};  
  float[][] tau={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] G={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float He, Ge = 0;
  void hacerMezclaLiq(){
    for(int i=0;i<8;i++){
      for(int j=0;j<8;j++){
        tau[i][j]=parameter_A[i][j]+parameter_B[i][j]/(tmezcla+273.15);
        G[i][j]=exp(-parameter_C[i][j]*tau[i][j]);
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
  for (int i=0;i<numero_comp;i++)
  {
    Ge=Ge+Composiciones[i]*log(gamma[i]);
  }
  float casi_He = 0;
  for (int i=0;i<numero_comp;i++)
  {
    float d = 0, e = 0;
    for (int j=0;j<numero_comp;j++)
    {
      d=d+(G[j][i]*tau[j][i]*(tau[j][i]*parameter_C[j][i]*Composiciones[i]-Composiciones[i]-G[j][i]*Composiciones[j]));  
      e=e+sq(Composiciones[i]+Composiciones[j]*G[j][i]);
    }
    casi_He=casi_He+(Composiciones[i]/(tmezcla+273.15))*(d/e);
  }
  He=-8.314*sq(tmezcla+273.15)*casi_He;

  }
  
  void comprobar(){
    //println(tau[1]);
    //println(G[2]);
    
    for(int i=0;i<numero_comp;i++){
      println(gamma[i]);
      //println(tau[i]);
      //println(G[i]);
    }
    println(Ge);
    println(He);
  }
   void dibujar(){    
    for(int i=0;i<numero_comp;i++){
      text(gamma[i],450,300+(40*i));
    }
    text("Ge",200,700);
    text("He",200,740);
    text(Ge,300,700);
    text(He,300,740);
  }

}