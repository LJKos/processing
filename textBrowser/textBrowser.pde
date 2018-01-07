

void setup() {
  size(600, 480);
  pixelDensity(displayDensity());
}

boolean write = false;
boolean loaded = false;

int c = 250;
int scroll = 0;
int slide = 0;

float urlx = 0;

String URL = "";
String page[];

char[] type = {' '};

void draw() {
  
  background(0);
  
  textSize(10);
  
  fill(250);
  rect(20, 40, 560, 420);
  
  fill(0);
  if (loaded == true && page != null) {
    for (int i = 0; i < page.length; i++) {
      text(page[i], 22+slide, 64+(12*i)+scroll);
    }
  } else if (loaded == true){
    text("Cannot find URL!", 22, 64);
  }
  
  fill(250);
  rect(20, 15, 300, 15);
  fill(0);
  text(URL, 22-urlx, 27);
  
  fill(c);
  stroke(250-c);
  rect(335, 15, 42, 15, 4);
  fill(250-c);
  text("Search", 340, 27);
  
  URL = new String(type);
  
  
  if (mousePressed && mouseX > 335 && mouseX < 377 && mouseY > 15 && mouseY < 30) {
    c = 0;
  } else {
    c = 250;
  }
  
}

void mouseClicked() {
  if (mouseX > 20 && mouseX < 320 && mouseY > 15 && mouseY < 30) {
    write = true;
  } else {
    write = false;
  }
  
  if (mouseX > 335 && mouseX < 377 && mouseY > 15 && mouseY < 30) {
    page = loadStrings(trim(URL));
    println("Loaded!");
    loaded = true;
    scroll = 0;
    slide = 0;
  }
}


void keyReleased() {
  if (write && keyCode != SHIFT && keyCode != 8 && keyCode != ENTER && keyCode != UP && keyCode != DOWN && keyCode != RIGHT && keyCode != LEFT) {
    type = append(type, key);
  }
  
  if (write && keyCode == 8 && type.length > 0) {
    type = shorten(type);
  }
  
  if (type.length > 35 && keyCode != UP && keyCode != DOWN && keyCode != RIGHT && keyCode != LEFT && keyCode != 8 && keyCode != ENTER && keyCode != SHIFT) {
    urlx += 8;
  } else {
    urlx = 0;
  }
  
  if (keyCode == ENTER) {
    page = loadStrings(trim(URL));
    println("Loaded!");
    loaded = true;
    scroll = 0;
    slide = 0;
  }
  
}

void keyPressed() {
  if (keyCode == UP) {
    scroll += 4;
  }
  
  if (keyCode == DOWN) {
    scroll -= 4;
  }
  
  if (keyCode == RIGHT) {
    slide -= 4;
  }
  
  if (keyCode == LEFT) {
    slide += 4;
  }
}