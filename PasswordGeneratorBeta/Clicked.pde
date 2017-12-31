void clicked() {
  
  if (mouseX > 175 && mouseX < 185 && mouseY > 30 && mouseY < 40 && l < 30) {
    l += 1;
  }
  
  if (mouseX > 160 && mouseX < 170 && mouseY > 30 && mouseY < 40 && l > 1) {
    l -= 1;
  }
  
  if (mouseX > 160 && mouseX < 182 && mouseY > 50 && mouseY < 60) {
    if (ra == true) {
      ra = false;
    } else {
      ra = true;
    }
  }
  
  if (mouseX > 160 && mouseX < 182 && mouseY > 60 && mouseY < 70) {
    if (rb == true) {
      rb = false;
    } else {
      rb = true;
    }
  }
  
  if (mouseX > 160 && mouseX < 182 && mouseY > 70 && mouseY < 80) {
    if (rc == true) {
      rc = false;
    } else {
      rc = true;
    }
  }
  
  if (mouseX > 160 && mouseX < 182 && mouseY > 80 && mouseY < 90) {
    if (rd == true) {
      rd = false;
    } else {
      rd = true;
    }
  }
  
  if (mouseX > width/2-40 && mouseX < width/2+40 && mouseY > height/2-20 && mouseY < height/2+20) {
    if ((xx/10) < l) {
      b = false;
      for (int i = 0; i < l; i++) {
        R.display();
        if (r != null) {
          stroke(250);
          fill(250);
          textSize(14);
          text(r, (width/2-40)+xx, height/2+60);
          xx += 10;
          //xx += textWidth(r);
        } else {
          if (ra == false && rb == false && rc == false && rd == false) {
            print("allOptionsFalse");
          } else {
            i -= 1;
          }
        }
      }
    } else {
      b = true;
      xx = 0;
    }
    
  }

}