PImage garden, zombie, peashoot, sunlight, nightfrontyard;
float x1, y1, x2, y2, x3, y3;
float speedX1, speedX2, speedX3;
float mouseXVal = 0;
float mouseYVal = 0;

void setup() {
  size(1080, 720, P2D);
  frameRate(60);
  
  garden = loadImage("garden.jpg");
  zombie = loadImage("zombie1.png");
  peashoot = loadImage("1.png");
  sunlight = loadImage("2.png");
  nightfrontyard = loadImage("Nightfrontyard.jpg");
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  x2 = 950;
  y2 = 380;
  x3 = x2 - 550;
  y3 = y2 - 380;
  speedX1 = 4;
  speedX2 = speedX1 *0.6;
  speedX3 = 255;
  
}

void draw() {
  surface.setTitle("" + frameRate);
  
  noTint();
  image(nightfrontyard, x1, y1, nightfrontyard.width * (height / nightfrontyard.height), height);

  tint(255, speedX3);
  if (speedX3 > 0){
  speedX3--;
 }
  else if (speedX3 < 0){
  speedX3++;
 }
  image(garden, x1, y1, garden.width * (height / garden.height), height);
  
  x2 -= speedX1;
  noTint();
  image(zombie, x2+random(-3, 5), y2+random(-3, 5), 112, 147);
  if (x2 < 0){
  x2 = 1080;
  y2 = int(random(height));
 }
  noTint();
  image(sunlight, x3, y3, 120, 120);
  y3 += speedX2;
  if (y3 > height){
  y3 = 0;
  x3 = int(random(width));
 }

 if (mousePressed){
  mouseXVal = mouseX;
  mouseYVal = mouseY;
 }
  noTint();
  image(peashoot, mouseXVal, mouseYVal, 100, 100);

}
