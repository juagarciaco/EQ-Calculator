
import controlP5.*;
import java.util.*;

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