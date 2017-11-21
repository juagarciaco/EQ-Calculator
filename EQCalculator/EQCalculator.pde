//comentario xx
import controlP5.*;
import java.util.*;


ControlP5 cp5;

void setup() {
  size(600, 600);
  cp5 = new ControlP5(this);
  List l = Arrays.asList("2", "3", "4", "5", "6", "7", "8");
  cp5.addScrollableList("Elija numero de compuestos para la mezcla")
     .setPosition(100, 100)
     .setSize(200, 100)
     .setBarHeight(20)
     .setItemHeight(20)
     .addItems(l)
     ;
}

void draw() {
  background(240);
}

void dropdown(int n) {
  println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
  CColor c = new CColor();
  c.setBackground(color(255,0,0));
  cp5.get(ScrollableList.class, "dropdown").getItem(n).put("color", c);
  
}