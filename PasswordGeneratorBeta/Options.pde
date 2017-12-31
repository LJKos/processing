class Options {
  
  void display() {
    fill(250);
    textSize(12);
    text("password length: " + round(l), 40, 40);
    
    text("numbers: ", 40, 60);
    text("small letters: ", 40, 70);
    text("capital letters: ", 40, 80);
    text("symbols: ", 40, 90);
    
  }
  
}