
/*
Password Generator
Version: Beta

This program was created by Lauri Koskenniemi. This version (Beta) was completed 19.3.2017.

*/

Generate G = new Generate();
Options O = new Options();
Button1 B1 = new Button1();
Button2 B2 = new Button2();
Button3 B3 = new Button3();
Button4 B4 = new Button4();
Button5 B5 = new Button5();
Button6 B6 = new Button6();
Randoms R = new Randoms();


void setup() {
  size(640, 360);
  background(0);
  pixelDensity(displayDensity());
}

float x;
float y;
float xx;
float l = 1;

boolean b = true;
boolean ra = true;
boolean rb = true;
boolean rc = true;
boolean rd = true;

String r;
String r1;
String r2;
String r3;
String r4;


void draw() {
  
  make();
  
  G.display();
  O.display();
  B1.display(175, 30);
  B2.display(160, 30);
  B3.display(160, 50);
  B4.display(160, 60);
  B5.display(160, 70);
  B6.display(160, 80);
  
}

void mouseClicked() {
  
  clicked();
  
}