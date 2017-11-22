
import controlP5.*;
import java.util.*;

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


ControlP5 cp5;
List k = Arrays.asList("Metanol", "Etanol", "Benceno", "P-Xileno", "Tolueno", "Cloroformo", "Agua", "Acetona");

void setup() {
  fullScreen();
  background(0);
 
  cp5 = new ControlP5(this);
  List l = Arrays.asList("2", "3", "4", "5", "6", "7", "8");
  cp5.addScrollableList("Elija numero de componentes")
     .setPosition(100, 100)
     .setSize(300, 200)
     .setBarHeight(20)
     .setItemHeight(20)
     .setValue(1)
     .setOpen(false)
     .addItems(l)
     ;
     
     for(int j = 0; j < 9; j++){
     cp5 = new ControlP5(this);
     cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 650 - (j*50))
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     }
     
     for (int d = 0; d < 9; d++){
      cp5 = new ControlP5(this);
      cp5.addTextfield("")
     .setPosition(400, 650 - (d*50))
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     }
     
  cp5.addButton("Calcular")
      .setLabel("Calcular")
      .setPosition(1000, 600)
      .setSize(200, 100)
      .setFont(createFont("arial",15))
      ;

cp5.addTextfield("Presión")
     .setLabel("Presión (Bar)")
     .setPosition(800, 300)
     .setSize(300, 30)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;

cp5.addTextfield("Temp")
     .setLabel("Temperatura (C)")
     .setPosition(800, 450)
     .setSize(300, 30)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;

     }


void draw() {
 background (0);
 textSize(100);
fill(0, 128, 0); 
text("EQ CALCULATOR", 500, 150);

}

void dropdown(int n) {
  /* request the selected item based on index n */
  println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
  CColor c = new CColor();
  c.setBackground(color(255,0,0));
  cp5.get(ScrollableList.class, "m").getItem(n).put("color", c);
  
}
