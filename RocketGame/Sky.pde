class Sky {
  void display() {
    fill(0, c/2, c);
    noStroke();
    rect(0, 0, width, height);
    
    if (yb > 0) {
      c = 255;
    } else if (yb < -8160) {
      c = 0;
    } else if (yb < 0 && yb > -8160) {
      c = 255-yb/(-32);
    }
    
  }
}