class MezclaVap {
  float[][] b_0_1={{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0}};
  float[][] tc_i_j={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] pc_i_j={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] zc_i_j={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] vc_i_j={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] w_i_j={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float[][] b_i_j={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
  float [] fi={0,0,0,0,0,0,0,0};
  void hacerMezclaVap(){
    for(int i=0;i<numero_comp;i++){
      b_0_1[i][0]=0.083-0.422/pow(((tmezcla+273.15)/propiedades_puras[i][1]),1.6);
    }
    for(int i=0;i<numero_comp;i++){
      b_0_1[i][1]=0.139-0.172/pow(((tmezcla+273.15)/propiedades_puras[i][1]),4.2);
    }
    for(int i=0;i<numero_comp;i++){
      for(int j=0;j<numero_comp;j++){
        tc_i_j[i][j]=sqrt(propiedades_puras[i][1]*propiedades_puras[j][1]);
      }
    }
    for(int i=0;i<numero_comp;i++){
      for(int j=0;j<numero_comp;j++){
        zc_i_j[i][j]=(propiedades_puras[i][0]+propiedades_puras[j][0])/2;
      }
    }
    for(int i=0;i<numero_comp;i++){
      for(int j=0;j<numero_comp;j++){
        w_i_j[i][j]=(propiedades_puras[i][3]+propiedades_puras[j][3])/2;
      }
    }
    for(int i=0;i<numero_comp;i++){
      for(int j=0;j<numero_comp;j++){
        vc_i_j[i][j]=pow((pow(propiedades_puras[i][4],1/3)+pow(propiedades_puras[j][4],1/3))/2,3);
      }
    }
    for(int i=0;i<numero_comp;i++){
      for(int j=0;j<numero_comp;j++){
        pc_i_j[i][j]=zc_i_j[i][j]*83.14*tc_i_j[i][j]/vc_i_j[i][j];
      }
    }
    for(int i=0;i<numero_comp;i++){
      for(int j=0;j<numero_comp;j++){
        b_i_j[i][j]=(83.14*tc_i_j[i][j]/pc_i_j[i][j])*(b_0_1[i][0]+w_i_j[i][j]*b_0_1[i][1]);
      }
    }
    for(int k=0;k<numero_comp;k++){
      float suma_2 =0;
      for(int i=0;i<numero_comp;i++){
        for(int j=0;j<numero_comp;j++){
          suma_2=suma_2+Composiciones[i]*Composiciones[j]*(4*b_i_j[i][k]-2*b_i_j[i][i]-2*b_i_j[k][k]-2*b_i_j[i][j]+b_i_j[i][i]+b_i_j[j][j]);
        }
      }
      fi[k]=exp( (pmezcla/(83.14*(tmezcla+273.15)))* (b_i_j[k][k]+suma_2/2) );
    }
  }
  void comprobar(){    
    for(int i=0;i<numero_comp;i++){
      println(fi[i]);
    }
    //println(Ge);
    //println(He);
  }
   void dibujar(){    
    for(int i=0;i<numero_comp;i++){
      
      text(fi[i],450,300+(40*i));
    }
   }
}