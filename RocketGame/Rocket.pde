class Rocket {
  void display() {
    
    fill(250);
    rect(x + 2, height-yr + 4, 4, 30);
    triangle(x + 2, height-yr + 4, x + 6, height-yr + 4, x + 4, height-yr);
    fill(10);
    triangle(x + 6, height-yr + 28, x + 6, height-yr + 34, x + 9, height-yr + 34);
    triangle(x + 2, height-yr + 28, x + 2, height-yr + 34, x - 1, height-yr + 34);
    
  }
}