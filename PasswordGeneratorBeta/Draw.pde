void make() {
  
  noStroke();
  fill(0);
  rect(-1, -1, 641, height/2+40);
  rect(-1, -1, width/2-40, 361);
  
  if (b == true) {
    fill(0);
    rect(-1, -1, 641, 361);
  }
  
}