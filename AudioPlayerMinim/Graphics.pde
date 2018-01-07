class Graphics {
  
  void display() {
    
    if (folder == false) {
      fill(255);
      rect(10, 10, 10, 1, 1);
      rect(10, 13, 10, 1, 1);
      rect(10, 16, 10, 1, 1);
    } else if (folder == true) {
    
      noStroke();
    
      fill(0);
      rect(0, 0, 300, 40);
    
      fill(255);
      stroke(255);
      line(11, 11, 19, 19);
      line(19, 11, 11, 19);
      noFill();
      beginShape();
      vertex(11, 29);
      vertex(12, 26);
      vertex(15, 26);
      vertex(17, 27);
      endShape();
      rect(11, 28, 9, 7, 2);
    
      textSize(10);
      text("Folder location: ", 30, 19);
      text(selected, 30, 35);
    }
    
    if (listReady == true) {
      fill(255);
      text(music[songNum], 10, 30);
    
      min = file.position()/1000/60;
      sec = file.position()/1000%60;
    
      minl = (file.length()-file.position())/1000/60;
      secl = (file.length()-file.position())/1000%60;
    
      stroke(255);
      textSize(10);
      line(20, 100, map(file.position(), 0, file.length(), 0, 260)+20, 100);
      text(int(min)+":"+nf(int(sec), 2), 10, 115);
      text(int(minl)+":"+nf(int(secl), 2), 265, 115);
    
      sv = map(v, -80, -13, 0, 80);
      stroke(255);
      line(200, 50, 200+sv, 50);
    }
    
  }
  
  void buttons(boolean play, boolean back, boolean forw, boolean prev, boolean next) {
    
  }
  
}