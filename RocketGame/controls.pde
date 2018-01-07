class Controls {
  void controls() {
    if (keyPressed && key == ' ') {
    
      E.display();
    
      if (yr < height/2) {
        d += 0.002;
        yr = yr+d;
        yb += 0;
      } else {
        d += 0.002;
        yr += 0;
        yb = yb-d;
      }
    
      if (yb >= 30) {
        yb = 30;
        yr = yr+d;
      }
    
      if (yr <= 70) {
        yr = 70;
      }
    
    } else {
      if (yb >= 30 && yr <= 70) {
        d = 0;
        yb = 30;
        yr = 70;
      } else {
        d -= 0.02;
        if (yb < 30) {
          yb = yb-d;
        }
        if (yb >= 30 && yr >= 70) {
          yb = 30;
          yr = yr+d;
        }
      }

    }
  }
}