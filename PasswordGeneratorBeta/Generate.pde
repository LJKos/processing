class Generate {
  
  float sc;
  float fc;
  float tc;
  
  void display() {
    
    stroke(sc);
    fill(fc);
    rect(width/2-40, height/2-20, 80, 40, 4);
    fill(tc);
    textSize(15);
    text("Generate", width/2-34, height/2+4);
    
    fill(250);
    textSize(12);
    text("password: ", width/2-100, height/2+60);
    
    
    if (mouseX > width/2-40 && mouseX < width/2+40 && mouseY > height/2-20 && mouseY < height/2+20) {
      if (mousePressed) {
        tc = 0;
        fc = 250;
        sc = 0;
      } else {
        tc = 0;
        fc = 200;
        sc = 200;
      }
    } else {
      tc = 250;
      fc = 0;
      sc = 250;
    }
    
  }
  
}