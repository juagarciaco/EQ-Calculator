
import controlP5.*;
import java.util.*;

ControlP5 cp5;
List k = Arrays.asList("Metanol", "Etanol", "Benceno", "P-Xileno", "Tolueno", "Cloroformo", "Agua", "Acetona");

void setup() {
  fullScreen();
  cp5 = new ControlP5(this);
  List l = Arrays.asList("2", "3", "4", "5", "6", "7", "8");
  /* add a ScrollableList, by default it behaves like a DropdownList */
  cp5.addScrollableList("Elija numero de componentes")
     .setPosition(100, 100)
     .setSize(300, 200)
     .setBarHeight(20)
     .setItemHeight(20)
     .setValue(1)
     .setOpen(false)
     .addItems(l)
     // .setType(ScrollableList.LIST) // currently supported DROPDOWN and LIST
     ;
     
     cp5 = new ControlP5(this);
    
     
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 250)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
          cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 300)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
               cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 350)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
               cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 400)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
     
     
}

void draw() {

   background(0);
   for(int j = 0; j < 4; j++){
     
         cp5.addScrollableList("Elija el componente.")
         .setPosition(100, 250+(50*j))
         .setSize(200, 100)
         .setBarHeight(20)
         .setOpen(false)
         .setItemHeight(20)
         .addItems(k);
     }
}

void dropdown(int n) {
  /* request the selected item based on index n */
  println(n, cp5.get(ScrollableList.class, "dropdown").getItem(n));
  
  /* here an item is stored as a Map  with the following key-value pairs:
   * name, the given name of the item
   * text, the given text of the item by default the same as name
   * value, the given value of the item, can be changed by using .getItem(n).put("value", "abc"); a value here is of type Object therefore can be anything
   * color, the given color of the item, how to change, see below
   * view, a customizable view, is of type CDrawable 
   */
  
   CColor c = new CColor();
  c.setBackground(color(255,0,0));
  cp5.get(ScrollableList.class, "m").getItem(n).put("color", c);
  
}