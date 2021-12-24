LetterGenerator lg;
String input = "wsl";
PImage iridescent;
PGraphics pg;


void setup() {
  size(800, 600, P3D);
  
  iridescent = loadImage("1.jpg");
  
   lg = new LetterGenerator(input, 0, height/2);
}

void draw() {
  pg.beginDraw();
  
  pg.background(127);
  
   lg.run(); 
  
  pg.endDraw();
   image(pg, 0, 0, width, height);
}
