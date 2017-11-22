void interfaz(){
  
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
     
     cp5 = new ControlP5(this);
     
     slider1 =  cp5.addSlider("")
     .setPosition(400, 250)
     .setSize(200, 20)
     .setNumberOfTickMarks(20)
     .set
     ;
     
          cp5 = new ControlP5(this);
     
     slider2 =  cp5.addSlider("")
     .setPosition(400, 300)
     .setSize(200, 20)
     ;
     
     slider3 =  cp5.addSlider("")
     .setPosition(400, 350)
     .setSize(200, 20)
     ;
     
     slider4 =  cp5.addSlider("")
     .setPosition(400, 400)
     .setSize(200, 20)
     ;

     slider5 =  cp5.addSlider("")
     .setPosition(400, 450)
     .setSize(200, 20)
     ;
     
     slider6 =  cp5.addSlider("")
     .setPosition(400, 500)
     .setSize(200, 20)
     ;
     
     slider1 =  cp5.addSlider("")
     .setPosition(400, 250)
     .setSize(200, 20)
     ;
    
    
    

  cp5.addScrollableList("Elija numero de componentes")
     .setPosition(100, 100)
     .setSize(300, 200)
     .setBarHeight(20)
     .setItemHeight(20)
     .setValue(1)
     .setOpen(false)
     .addItems(l)
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

  text("EQ CALCULATOR", 500, 150);
     ;
     
     }