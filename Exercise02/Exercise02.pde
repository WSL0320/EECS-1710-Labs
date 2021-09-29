PImage garden, zombie, peashoot, sunlight;
float x1, y1, x2, y2, x3, y3;
float speedX1, speedX2;
  float mouseXVal = 0;
  float mouseYVal = 0;
void setup() {
  size(1080, 720, P2D);
  
  garden = loadImage("garden.jpg");
  zombie = loadImage("zombie1.png");
  peashoot = loadImage("1.png");
  sunlight = loadImage("2.png");
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  x2 = 950;
  y2 = 380;
  x3 = 400;
  y3 = 0;
  speedX1 = 5;
  speedX2 = speedX1 *0.8;

}

void draw() {
  image(garden, x1, y1, garden.width * (height / garden.height), height);
  
 // image(img1, mouseX, mouseY, 100, 100);
  
  x2 -= speedX1;    
  image(zombie, x2+random(-3, 5), y2+random(-3, 5), 110, 147);
  if (x2 < 0){
  x2 = 1080;
  y2 = int(random(height));
 }
 
  image(sunlight, x3, y3, 120, 120);
  y3++;
  if (y3 > height){
  y3 = 0;
  x3 = int(random(width));
 }

 if (mousePressed){
    mouseXVal = mouseX;
 mouseYVal = mouseY;
 }
    image(peashoot, mouseXVal, mouseYVal, 100, 100);

}
