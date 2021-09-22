PImage img1, img2;
PFont font;
String message1 = "DRAWING";

void setup() {
  size(800, 600, P2D);
  frameRate(60);
  
  img1 = loadImage("drawingboard.png");
  img2 = loadImage("brush.png");
  
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
}
  
  

  
 
  
  
