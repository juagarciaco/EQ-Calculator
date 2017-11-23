import java.lang.String;
import controlP5.*;
import java.util.*;
ControlP5 cp5;
PFont georgia;
float numero_comp;
boolean check_composition = true;
Slider s1, s2, s3, s4, s5, s6, s7, s8;
ScrollableList lnumero,l1, l2, l3, l4, l5, l6, l7, l8;
Numberbox presion;
Numberbox temperatura;
List l = Arrays.asList("2", "3", "4", "5", "6", "7", "8");
float[] ListValue = {2,3,4,5,6,7,8};
List k = Arrays.asList("Metanol", "Etanol", "Benceno", "P-Xileno", "Tolueno", "Cloroformo", "Agua", "Acetona");
//List Arreglo_Sliders = Arrays.asList(s1, s2, s3, s4, s5, s6, s7, s8);
//List Arreglo_listas = Arrays.asList(l1, l2, l3, l4, l5, l6, l7, l8);

//Program data
double[][] parameter_A = {  {0.000, 4.712, -1.709, 0.678, 0.000, 0.000, -0.693, 0.000},
                            {-2.313, 0.000, 0.569, 4.075, 1.146, 0.000, -0.801, -1.079},
                            {11.580, -0.916, 0.000, 0.000, -2.885, 0.000, 45.191, 0.422},
                            {-3.259, -5.639, 0.000, 0.000, 0.000, 0.000, 2.773, 0.000},
                            {0.000, -1.722, 2.191, 0.000, 0.000, 0.000, -247.879, -1.285},
                            {0.000, 0.000, 0.000, 0.000, 0.000, 0.000, -7.352, 0.538},
                            {2.732, 3.458, 140.087, 162.477, 627.053, 8.844, 0.000, 0.054},
                            {2.732, 3.458, 140.087, 162.477, 627.053, 8.844, 0.000, 0.054},
                          };
                          
double[][] parameter_B = {  {0.000, -1162.300, 892.200, 295.500, 371.100, -71.9, 173.000, 114.100},
                            {483.800, 0.000, -54.800, -1202.400, -113.500, -148.900, -246.200, 479.100},
                            {-3282.600, 882.000, 0.000, 122.700, 1124.000, -375.400, 591.400, -239.9},
                            {1677.600, 2504.200, -136.500, 0.000, 75.900, -17.700, 296.700, 173.600},
                            {446.900, 992.700, -863.700, -91.100, 0.000, -57.000, 14759.800, 630.100},
                            {690.100, 690.300, 313.000, -120.200, -25.200, 0.000, 3240.700, -106.400},
                            {-617.300, -586.100, -5954.300, -6046.000, -27269.400, -1140.100, 0.000, 420.000},
                            {101.900, 206.600, 306.100, 83.200, -400.500, -590.000, -1809.000, 0.000},
                          };
                          
double[][] parameter_C = {  {0.0, 0.3, 0.4, 0.5, 0.3, 0.3, 0.3, 0.3},
                            {0.0, 0.0, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3},
                            {0.0, 0.0, 0.0, 0.3, 0.3, 0.5, 0.2, 0.3},
                            {0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.2, 0.3},
                            {0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.3},
                            {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.3},
                            {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3},
                            {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
                          };

double[][] parameters_Antoine = {  {8.07240, 8.1122, 6.90565, 6.99052, 6.95464, 6.93710, 8.01767, 7.23160},
                                   {1574.990, 1592.864, 1211.033, 1453.430, 1344.800, 1171.200, 1715.7, 1277.030},
                                   {238.870, 226.184, 220.790, 215.307, 219.482, 227.000, 234.268, 237.230},
                                };

//End of Program Data

//String selected = null;

<<<<<<< HEAD
void lnumero() {
 // if (check_number){
    numero_comp = lnumero.getArrayValue((int)lnumero.getValue());
    for(int i=1;i<9;i++ ){
      if(i>numero_comp){
        cp5.get(ScrollableList.class,"Elija el componente "+ i + ".").setVisible(false);
        cp5.get(Slider.class,"Composicion global "+ i).setVisible(false);
      }
      else {
        cp5.get(ScrollableList.class,"Elija el componente "+ i + ".").setVisible(true);
        cp5.get(Slider.class,"Composicion global "+ i).setVisible(true);
      }
    }
  }
//}

=======
>>>>>>> 3ae0479c201900b9f940092e7387c2b946a270f1
void setup() {
  fullScreen();
  background(0);
  cp5 = new ControlP5(this);
  interfaz();   
}
    

void draw() {
   background (0);
   textSize(100);
   fill(0, 128, 0); 
   georgia = createFont("georgia", 90);
   textFont(georgia);
   text("EQ CALCULATOR", 500, 150);
        fill(255);
      //text("valor" + numero_comp, 50,50); 
       textSize(20);
       if(check_composition == false){
       text("Suma de porcentajes debe ser 100.", 100, 700);  
       }
   fill (255,0,0);

}

void lnumero() {
    numero_comp = lnumero.getArrayValue((int)lnumero.getValue());
    for(int i=1;i<9;i++ ){
      if(i>numero_comp){
        cp5.get(ScrollableList.class,"Elija el componente "+ i + ".").setVisible(false);
        cp5.get(Slider.class,"Composicion global "+ i).setVisible(false).setValue(0);
      }
      else {
        cp5.get(ScrollableList.class,"Elija el componente "+ i + ".").setVisible(true);
        cp5.get(Slider.class,"Composicion global "+ i).setVisible(true);
      }
    }
  }

void comprobar_mezcla(){
  if ((s1.getValue()+s2.getValue()+s3.getValue()+s4.getValue()+s5.getValue()+s6.getValue()+s7.getValue()+s8.getValue()) != 100){
    check_composition=false;
  }
  else {
      check_composition=true;
  }
}
  
void Calcular() {
   comprobar_mezcla();
  }