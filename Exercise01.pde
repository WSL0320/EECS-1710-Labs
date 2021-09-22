PImage img1, img2;
PFont font;
String message1 = "DRAWING";
PVector v1, v2;
PShape s;

void setup() {
  size(800, 600, P2D);
  frameRate(60);
  
  img1 = loadImage("drawingboard.png");
  img2 = loadImage("brush.png");
  
  v1 = new PVector(800, 0);
  v2 = new PVector(388, 70);
  
  s = createShape();
  s.beginShape();
  s.stroke(245,150,235);
  s.fill(95,220,240);
  s.vertex(v1.x, v1.y);
  s.vertex(v2.x, v2.y);
  s.vertex(0, 0);
  s.endShape();
  
  background(255, 255, 255);
}

void draw() {
  surface.setTitle("" + frameRate);
  imageMode(CENTER);
  image(img1, width/2,height/2, width, height);

  imageMode(CENTER);
  image(img2, mouseX, mouseY, 140, 70);
  
  if (mousePressed);
  fill(random(255), random(255), 0);
  text(message1, mouseX, mouseY);
  
  fill(220, 255, random(255));
  stroke(0, 0 , 0);
  strokeWeight(1);
  line(mouseX, mouseY, pmouseX, pmouseY);
  rect(mouseX, mouseY, 55, 10);
  
  shape(s);
}
  
  

  
 
  
  
