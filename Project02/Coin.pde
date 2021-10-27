class Coin {

  PImage img;
  PVector position;
  boolean pick = true;
  float speed = 1;

  Coin(float x, float y) {
    img = loadImage("coin.gif");
    position = new PVector(x, y);
    speed = speed + random(2, 8);
    
  }

  void update() {
    position.x -= speed;
    if (position.x < 0) {
      position.x = width;
      position.y = random(150, 300);
    }
    if(position.dist(girl.position) < 50) {      
      pick = false;
    }    
  }

  void draw() {
    image(img, position.x, position.y, 80, 80);
  }

  void run() {
    update();
    draw();
  }
}
