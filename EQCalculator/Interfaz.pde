void interfaz(){
  
     
cp5.addTab("default")
     .setLabel("INICIO")
     .activateEvent(true)
     .setColorBackground(color(0, 70, 0))
     .setColorLabel(color(255))
     .setSize(100, 200)
     .setId(1);
     
  /*for(int j = 0; j < 8; j++){
 
     cp5.addScrollableList("Elija el componente.")
     .setPosition(100, 600 - (j*50))
     .setSize(200, 100)
     .setBarHeight(20)
     .setOpen(true)
     .setItemHeight(20)
     .addItems(k)
     .setVisible(true);
     }*/
          
     l1 = cp5.addScrollableList("Elija el componente 8.")
     .setPosition(100, 600)
     .setSize(200, 150)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
         
     l2= cp5.addScrollableList("Elija el componente 7.")
     .setPosition(100, 550)
     .setSize(200, 100)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
          
     l3= cp5.addScrollableList("Elija el componente 6.")
     .setPosition(100, 500)
     .setSize(200, 100)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
         
     l4= cp5.addScrollableList("Elija el componente 5.")
     .setPosition(100, 450)
     .setSize(200, 100)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
         
     l5= cp5.addScrollableList("Elija el componente 4.")
     .setPosition(100, 400)
     .setSize(200, 100)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
         
     l6= cp5.addScrollableList("Elija el componente 3.")
     .setPosition(100, 350)
     .setSize(200, 100)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
      
     l7= cp5.addScrollableList("Elija el componente 2.")
     .setPosition(100, 300)
     .setSize(200, 100)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
     
     l8= cp5.addScrollableList("Elija el componente 1.")
     .setPosition(100, 250)
     .setSize(200, 100)
     .setBarHeight(30)
     .setOpen(false)
     .setItemHeight(20)
     .addItems(k)
     .setValueSelf(-1)
     .setVisible(true);
       
     s1 =  cp5.addSlider("Composicion global 1")
     .setPosition(400, 250)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
          
     s2 =  cp5.addSlider("Composicion global 2")
     .setPosition(400, 300)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
     
     s3 =  cp5.addSlider("Composicion global 3")
     .setPosition(400, 350)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
          
     s4 =  cp5.addSlider("Composicion global 4")
     .setPosition(400, 400)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
          
     s5 =  cp5.addSlider("Composicion global 5")
     .setPosition(400, 450)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
          
     s6 = cp5.addSlider("Composicion global 6")
     .setPosition(400, 500)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
         
     s7 = cp5.addSlider("Composicion global 7")
     .setPosition(400, 550)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
        
     s8 =  cp5.addSlider("Composicion global 8")
     .setPosition(400, 600)
     .setSize(200, 30)
     .setDecimalPrecision(0)
     .setNumberOfTickMarks(21)
     .setSliderMode(Slider.FLEXIBLE);
             
    lnumero = cp5.addScrollableList("lnumero")
       .setLabel("Elija numero de componentes")
       .setPosition(100, 100)
       .setSize(300, 400)
       .setFont(createFont("georgia", 14))
       .setBarHeight(60)
       .setItemHeight(60)
       .setOpen(false)
       .addItems(l).setArrayValue(ListValue)
       .setValueSelf(-1)
       .setVisible(true);
     
  cp5.addButton("Calcular")
      .setLabel("Calcular")
      .setPosition(1000, 600)
      .setSize(200, 100)
      .setFont(createFont("arial",30));

presion = cp5.addNumberbox("Presión")
     .setLabel("Presión (Bar)")
     .setPosition(800, 300)
     .setSize(300, 30)
     .setDecimalPrecision(0)
     .setScrollSensitivity(1)   
     .setRange(0, 200)
     .setFont(createFont("georgia",20))
     .setMultiplier(1);

temperatura = cp5.addNumberbox("Temp")
     .setLabel("Temperatura (C)")
     .setPosition(800, 450)
     .setSize(300, 30)
     .setScrollSensitivity(1)   
     .setDecimalPrecision(0)
     .setRange(-273, 700)
     .setFont(createFont("georgia",20))
     .setMultiplier(1);
     
  myChart = cp5.addChart("")
               .setPosition(780, 600)
               .setSize(200, 100)
               .setRange(-20, 20)
               .setView(Chart.LINE) // use Chart.LINE, Chart.PIE, Chart.AREA, Chart.BAR_CENTERED
               .setStrokeWeight(1.5)
               .setColorCaptionLabel(color(40))
               ;

  myChart.addDataSet("incoming");
  myChart.setData("incoming", new float[100]);   

  cp5.addToggle("Liquido Vapor")
     .setPosition(1200, 375)
     .setSize(100, 30)
     .setValue(true)
     .setFont(createFont("times new roman", 13))
     .setMode(ControlP5.SWITCH)
     ;

}    

     