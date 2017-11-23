void interfaz(float numero_comp){
  
  for(int j = 0; j < numero_comp; j++){
     cp5 = new ControlP5(this);
     cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 600 - (j*50))
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     } 
  /*for(int j = 0; j < 8; j++){
     cp5 = new ControlP5(this);
     cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 600 - (j*50))
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k);
     }
     
     cp5 = new ControlP5(this);
       
     slider1 =  cp5.addSlider("")
     .setPosition(400, 250)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;
     
     cp5 = new ControlP5(this);
     
     slider2 =  cp5.addSlider("")
     .setPosition(400, 300)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;

     cp5 = new ControlP5(this);
     
     slider3 =  cp5.addSlider("")
     .setPosition(400, 350)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;
     
     cp5 = new ControlP5(this);
     
     slider4 =  cp5.addSlider("")
     .setPosition(400, 400)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;
          
     cp5 = new ControlP5(this);
     
     slider5 =  cp5.addSlider("")
     .setPosition(400, 450)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;
              
     cp5 = new ControlP5(this);
     
     slider6 =  cp5.addSlider("")
     .setPosition(400, 500)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;
     
               
     cp5 = new ControlP5(this);
     
     slider7 =  cp5.addSlider("")
     .setPosition(400, 550)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;
    
               
     cp5 = new ControlP5(this);
     
     slider8 =  cp5.addSlider("")
     .setPosition(400, 600)
     .setSize(200, 20)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE)
     ;
        */
     
  cp5.addButton("Calcular")
      .setLabel("Calcular")
      .setPosition(1000, 600)
      .setSize(200, 100)
      .setFont(createFont("arial",15))
      ;

presion = cp5.addNumberbox("Presión")
     .setLabel("Presión (Bar)")
     .setPosition(800, 300)
     .setSize(300, 30)
     .setRange(0, 1000)
     .setFont(createFont("georgia",20))
     .setMultiplier(5)
     ;

temperatura = cp5.addNumberbox("Temp")
     .setLabel("Temperatura (C)")
     .setPosition(800, 450)
     .setSize(300, 30)
     .setRange(-273, 700)
     .setFont(createFont("georgia",20))
     .setMultiplier(5)
     ;

     }
     

     
/*public void comprobar_mezcla(){
  if ((slider1.getValue()+slider2.getValue()+slider3.getValue()+slider4.getValue()+slider5.getValue()+slider6.getValue()+slider7.getValue()+slider8.getValue()) != 100){
    text("Suma de porcentajes debe ser 100.", 100, 900);
  }
}*/