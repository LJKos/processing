

/*
Music player demo - Creator: Lauri Koskenniemi - (started) 25.5.2017 - (updated version started) 23.8.2017 - (changed to Minim) 14.10.2017

URLs:
http://code.compartmental.net/
http://code.compartmental.net/minim/

Problem with graphics. Start by clicking near the top-left corner.
Working on controls.
*/

import ddf.minim.*;

Minim minim;
AudioPlayer file;

Graphics G;

String song;


void setup() {
  size(300, 130);
  frameRate(30);
  pixelDensity(displayDensity());
  
  minim = new Minim(this);
  G = new Graphics();
}


int songNum = 1;

String[] music = new String[1];

boolean FT = false;
boolean folder = false;
boolean listReady = false;

String selected = "<-- select";

float x;
float dx;
float set;
float v = -46;
float sv;
float min;
float sec;
float minl;
float secl;


void draw() {
  
  background(0);
  G.display();
  
  if (listReady == true) {
    file.setGain(v);
  }
  
  listener();
  
}

void mouseClicked() {
  
  if (mouseX > 10 && mouseX < 20 && mouseY > 10 && mouseY < 20) {
    if (folder == false) {
      folder = true;
    } else {
      folder = false;
    }
  }
  
  if (folder == true && mouseX > 11 && mouseX < 21 && mouseY > 28 && mouseY < 38) {
    selectFolder("Select your music folder:", "folderSelected");
  }
}

void keyPressed() {
  if (keyCode == UP && v < -13) {
    v += 0.5;
  }
  
  if (keyCode == DOWN && v > -80) {
    v -= 0.5;
  }
}

void keyReleased() {
  if (listReady) {
    if (keyCode == RIGHT && songNum < music.length-1) {
      songNum += 1;
      if (file.isPlaying()) {
        setFile();
      }
    }
  
    if (keyCode == LEFT && songNum > 1) {
      songNum -= 1;
      if (file.isPlaying()) {
        setFile();
      }
    }
  
    if (keyCode == RIGHT && songNum == music.length-1) {
      songNum = 1;
      if (file.isPlaying()) {
        setFile();
      }
    }
  
    if (keyCode == LEFT && songNum == 1) {
      songNum = music.length-1;
      if (file.isPlaying()) {
        setFile();
      }
    }
  
    if (key == ' ' && file.isPlaying()) {
      file.pause();
      FT = false;
    } else if (key == ' ' && file.position() == 0 || key == ' ' && file.position() == file.length()) {
      setFile();
      file.play();
      FT = true;
    } else if (key == ' ' && file.isPlaying() == false) {
      file.play();
      FT = true;
    }
  
  }
  
  
}

void folderSelected(File selection) {
  if (selection == null) {
    println("Closed");
  } else {
    println("User selected " + selection.getAbsolutePath());
    selected = selection.getAbsolutePath();
    java.io.File dir = new java.io.File(dataPath(selected));
    String[] names = dir.list();
    println("files loaded");
    
    music[0] = "!";
    for (int i = 0; i < names.length; i++) {
      int l = names[i].length();
      if (names[i].charAt(l-1) == '3' && names[i].charAt(l-2) == 'p' && names[i].charAt(l-3) == 'm' && names[i].charAt(l-4) == '.') {
        music = splice(music, names[i], 1);
      }
    }
    println("found music files");
    music = sort(music);
    println("music sorted");
    //printArray(music);
    song = selected+"/"+music[songNum];
    file = minim.loadFile(song);
    listReady = true;
  }
}

void setFile() {
  file.pause();
  file.rewind();
  song = selected+"/"+music[songNum];
  file = minim.loadFile(song);
  file.rewind();
}

void listener() {
  if (listReady == true) {
    if (file.position() >= file.length()-1) {
      songNum ++;
      setFile();
      file.play();
    }
  }
}