 void setup() {
  size(848, 480);
  frameRate(30);
}



//VARIABLES

int x = 20;
int y = 400;


//checkpoints
boolean a = false;
boolean b = false;
boolean c = false;
boolean d = false;
boolean e = false;
//checkpoints


int z = 2; 
//time counter
int t = 0;
//another time
int ca = 2;
int cb = 46;
int cc = 73;
//color changer

//VARIABLES^



//DRAW FUNCTION

void draw() {

  background(185, 255, 255); //background stuff starts !!!check out if-sentences bellow!!!
  noStroke();
  
  //Boxes
  fill(25, 25, 25); //the boxes on screen color
  rect(100, 450, 10, 10); //the first box on screen
  rect(200, 430, 40, 30); //the second box on screen
  rect(350, 440, 20, 20); //the third box on screen
  rect(370, 410, 50, 50); //the fourth box on screen
  //Boxes
  
  //Tele.'s
  fill(ca, cb, cc);
  rect(250, 450, 10, 10);
  rect(380, 400, 10, 10);
  rect(500, 390, 180, 10);
  rect(480, 450, 200, 10);
  //Tele.'s
  
  fill(20, 20, 20); //ground <-
  rect(0, 460, 848, 20); //ground <- and background stuff ends
  
  fill(0, 0, 0); //flag
  rect(808, 445, 2, 15);
  rect(810, 445, 4, 4);
  rect(814, 449, 4, 4);
  rect(818, 445, 4, 4);
  fill(255, 255, 255);
  rect(810, 449, 4, 4);
  rect(814, 445, 4, 4);
  rect(818, 449, 4, 4); //flag
  
  //red rect
  fill(255, 0, 0);
  rect(x, y, 10, 10);
  //red rect

//checkpoints
  if (x == 100 && y > 435) {
    a = true;
    fill(185, 255, 255);
  } else {
    fill(255, 80, 80);
  } rect(100, 435, 5, 15);
  
  if (x == 200 && y > 415) {
    b = true;
    fill(185, 255, 255);
  } else {
    fill(255, 80, 80);
  } rect(200, 415, 5, 15);
  
  if (x == 300 && y > 445) {
    c = true;
    fill(185, 255, 255);
  } else {
    fill(255, 80, 80);
  } rect(300, 445, 5, 15);
  
  if (x == 400 && y > 395) {
    d = true;
    fill(185, 255, 255);
  } else {
    fill(255, 80, 80);
  } rect(400, 395, 5, 15);
  
  if (x == 700 && y > 445) {
    e = true;
    fill(185, 255, 255);
  } else {
    fill(255, 80, 80);
  } rect(700, 445, 5, 15);
//checkpoints

//Boxes -> if's  
  if (x > 90 && x < 110 && y > 438.5) {
    y -= 2;
    if (x > 90 && x < 100 && y > 439) {
      x -= 5;
    }
    if (x < 110 && x > 100 && y > 439) {
      x += 5;
    }
  } // the first box on screen
  
  if (x > 190 && x < 240 && y > 418.5) {
    y -= 2;
    if (x > 190 && x < 215 && y > 419) {
      x -= 5;
    }
    if (x < 240 && x > 215 && y > 419) {
      x += 5;
    }
  } // the second box on screen
  
  if (x > 340 && x < 365 && y > 428.5) {
    y -= 2;
    if (x > 340 && x < 365 && y > 429) {
      x -= 5;
    }
  } // the third box on screen
  
  if (x > 360 && x < 420 && y > 398.5) {
    y -= 2;
    if (x > 360 && x < 380 && y > 399) {
      x -= 5;
    }
    if (x > 380 && x < 420 && y > 399) {
      x += 5;
    }
  } // the fourth box on screen
  
//Boxes -> if's
//Tele.'s -> if's
  if (x > 240 && x < 260 && y > 438.5) {
    x = 20;
    y = 400;
  }
  
  if (x > 370 && x < 390 && y > 388.5) {
    x = 20;
    y = 400;
  }
  
  if (x > 490 && x < 680 && y > 390 && y < 400) {
    x = 20;
    y = 400;
  }
  
  if (x > 470 && x < 680 && y > 438.5) {
    x = 20;
    y = 400;
  }
//Tele.'s -> if's
//Color changer
  if (ca == 225) {
    ca = 50;
  }
  ca = ca + cb / 2;
  if (cb == 225) {
    cb = 50;
  }
  cb = cb + ca / 3;
  if (cc == 225) {
    cc = 50;
  }
  cc = cc + ca / 4;
//Color changer
  
//Ground  
    if (y >= 448.5) {
    y += 0;
  } else {
    y +=2;
  }
//Ground
  
  //Texts
  if (x > 10 && x < 30 && y > 430) {
    fill(0, 0, 0);
    text("You can move the square by using arrow keys.", 20, 380);
  }
  
  if (x > 60 && x < 90 && y > 430) {
    fill(0, 0, 0);
    text("If you press UP the square jumps right", 50, 280);
    text("and if you press DOWN it jumps left.", 50, 295);
  }
  
  if (x > 99 && x < 110 && y > 420) {
    fill(0, 0, 0);
    text("Go through the checkpoints!", 80, 290);
  }
  
  if (x > 160 && x < 200 && y > 430) {
    fill(0, 0, 0);
    text("The square jumps straight up, if you press UP and DOWN.", 60, 310);
  }
  
  if (x > 200 && x < 240 && y > 380) {
    fill(0, 0, 0);
    text("Watch out the teleporter!!!", 160, 310);
  }
  
  if (x > 808 && y > 420 && a == true && b == true && c == true && d == true && e == true) {
    fill(0, 0, 0);
    text("Well done!", 720, 380);
    z += 1;
    if (z > 90) {
      fill(0, 0, 0);
      text("You can exit by pressing esc.", 660, 400);
      z += 0;
    }
  }
  
  if (x < 5 || x > 843) {
    fill(255, 0, 0);
    text("Don't pass the edge or you may lose your square!", 300, 220);
  }
}
//Texts
//DRAW FUNCTION^



//CONTROLS

void keyPressed() {
  if (keyCode == UP) {
    y -= 25;
    x += 10;
  }
  
  if (keyCode == DOWN) {
    y -= 25;
    x -= 10;
  }
  
  if (keyCode == RIGHT) {
    x += 5;
  }
  
  if (keyCode == LEFT) {
    x -= 5;
  }
  
  //exit
  if (keyCode == ESC) {
    exit();
  }
  
}

//CONTROLS^