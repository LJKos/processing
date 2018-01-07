class Engine {
  void display() {
    
    float f1;
    float f2;
    float f3;
    f1 = random(4, 8);
    f2 = random(4, 18);
    f3 = random(6, 24);
    
    stroke(200, 200, 0);
    fill(0, 250, 250);
    line(x + 2, height-yr + 34, x + 2, height-yr + 34 + f1);
    line(x + 6, height-yr + 34, x + 6, height-yr + 34 + f1);
    line(x + 3, height-yr + 34, x + 3, height-yr + 34 + f2);
    line(x + 5, height-yr + 34, x + 5, height-yr + 34 + f2);
    line(x + 4, height-yr + 34, x + 4, height-yr + 34 + f3);
    noStroke();
    
  }
}