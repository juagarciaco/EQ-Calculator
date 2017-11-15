
import controlP5.*;
import java.util.*;


ControlP5 cp5;
List k = Arrays.asList("Metanol", "Etanol", "Benceno", "P-Xileno", "Tolueno", "Cloroformo", "Agua", "Acetona");

void setup() {
  fullScreen();
  background(0);
 
textSize(100);
fill(0, 128, 0); 
text("EQ CALCULATOR", 500, 150);
  
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
     
      cp5.addTextfield("")
     .setPosition(400, 250)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
          cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 300)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 300)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
               cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 350)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 350)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
               cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 400)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 400)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
      cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 450)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 450)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
      cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 500)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 500)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
      cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 550)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 550)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
      cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 600)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 600)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
      cp5 = new ControlP5(this);
       cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 650)
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     
           cp5.addTextfield("")
     .setPosition(400, 650)
     .setSize(200, 20)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
     
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