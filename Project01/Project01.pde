PImage ocean, fish;
PVector position, target;
boolean isescaped = false;
void setup() {
  size(1080, 720, P2D);
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  
  ocean = loadImage("7.jpg");
  fish = loadImage("fish.png");
  fish.resize(fish.width/10, fish.height/10);
  
  imageMode(CENTER);
}

void draw() {
  image(ocean, width/2, height/2, width, height);
  
  PVector mousePos = new PVector(mouseX, mouseY);
  isescaped = position.dist(mousePos) < 100;
  
  if (isescaped) {
    position = position.lerp(target, 0.08);
    if (position.dist(target) < 5) {
      target = new PVector(random(width), random(height));
    }
  }
 image(fish, position.x, position.y);
 
}
  
  
