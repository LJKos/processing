
/*

-----ROCKET GAME-----

This is the first published version of the Rocket Game. In this version physics are not realistic.

Made by Lauri Koskenniemi
2016

*/


Rocket R = new Rocket();
Ground G = new Ground();
Engine E = new Engine();
Sky S = new Sky();
Controls C = new Controls();
Clouds Cl = new Clouds();

void setup() {
  fullScreen();
  pixelDensity(displayDensity());
  background(0);
}

float a;
float y;
float xx;
float x = 635;
float yb = 30;
float yr = 70;
float c = 255;
float d;
float dg;

void draw() {
  
  
  S.display();
  
  C.controls();
    
  R.display();
  G.display();
  Cl.display();
  
  fill(250);
  text("Altitude: " + ((-yb/200+yr/200)-0.1) + " km", 20, 20);
  text("Speed: " + (pow(d, 1.2)*800+xx) + " km/h", 20, 40);
  //text("yb: " + yb, 20, 60);
  //text("yr: " + yr, 20, 80);
  //text("d: " + d, 20, 100);
  
}