class Button1 {
  
  float fc;
  float sc;
  float tc;
  
  void display(float x, float y) {
    
    stroke(sc);
    fill(fc);
    rect(x, y, 10, 10, 1);
    fill(tc);
    text("+", x+1, y+9);
    
    if (mouseX > x && mouseX < x+10 && mouseY > y && mouseY < y+10) {
      if (mousePressed) {
        fc = 250;
        sc = 0;
        tc = 0;
      } else {
        fc = 200;
        sc = 200;
        tc = 0;
      }
    } else {
      fc = 0;
      sc = 0;
      tc = 250;
    }
    
  }
  
}

class Button2 {
  
  float fc;
  float sc;
  float tc;
  
  void display(float x, float y) {
    
    stroke(sc);
    fill(fc);
    rect(x, y, 10, 10, 1);
    fill(tc);
    text("-", x+2, y+9);
    
    if (mouseX > x && mouseX < x+10 && mouseY > y && mouseY < y+10) {
      if (mousePressed) {
        fc = 250;
        sc = 0;
        tc = 0;
      } else {
        fc = 200;
        sc = 200;
        tc = 0;
      }
    } else {
      fc = 0;
      sc = 0;
      tc = 250;
    }
    
  }
}

class Button3 {
  
  float fc;
  float sc;
  float tc;
  
  void display(float x, float y) {
    
    stroke(sc);
    fill(fc);
    rect(x, y, 22, 10, 1);
    fill(tc);
    if (ra == true) {
      text("yes", x+2, y+9);
    } else {
      text("no", x+4, y+9);
    }
    
    if (mouseX > x && mouseX < x+22 && mouseY > y && mouseY < y+10) {
      if (mousePressed) {
        fc = 250;
        sc = 0;
        tc = 0;
      } else {
        fc = 200;
        sc = 200;
        tc = 0;
      }
    } else {
      fc = 0;
      sc = 0;
      tc = 250;
    }
    
  }
}

class Button4 {
  
  float fc;
  float sc;
  float tc;
  
  void display(float x, float y) {
    
    stroke(sc);
    fill(fc);
    rect(x, y, 22, 10, 1);
    fill(tc);
    if (rb == true) {
      text("yes", x+2, y+9);
    } else {
      text("no", x+4, y+9);
    }
    
    if (mouseX > x && mouseX < x+22 && mouseY > y && mouseY < y+10) {
      if (mousePressed) {
        fc = 250;
        sc = 0;
        tc = 0;
      } else {
        fc = 200;
        sc = 200;
        tc = 0;
      }
    } else {
      fc = 0;
      sc = 0;
      tc = 250;
    }
    
  }
}

class Button5 {
  
  float fc;
  float sc;
  float tc;
  
  void display(float x, float y) {
    
    stroke(sc);
    fill(fc);
    rect(x, y, 22, 10, 1);
    fill(tc);
    if (rc == true) {
      text("yes", x+2, y+9);
    } else {
      text("no", x+4, y+9);
    }
    
    if (mouseX > x && mouseX < x+22 && mouseY > y && mouseY < y+10) {
      if (mousePressed) {
        fc = 250;
        sc = 0;
        tc = 0;
      } else {
        fc = 200;
        sc = 200;
        tc = 0;
      }
    } else {
      fc = 0;
      sc = 0;
      tc = 250;
    }
    
  }
}

class Button6 {
  
  float fc;
  float sc;
  float tc;
  
  void display(float x, float y) {
    
    stroke(sc);
    fill(fc);
    rect(x, y, 22, 10, 1);
    fill(tc);
    if (rd == true) {
      text("yes", x+2, y+9);
    } else {
      text("no", x+4, y+9);
    }
    
    if (mouseX > x && mouseX < x+22 && mouseY > y && mouseY < y+10) {
      if (mousePressed) {
        fc = 250;
        sc = 0;
        tc = 0;
      } else {
        fc = 200;
        sc = 200;
        tc = 0;
      }
    } else {
      fc = 0;
      sc = 0;
      tc = 250;
    }
    
  }
}