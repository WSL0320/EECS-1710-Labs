class Coin {

  PImage img;
  PVector position;
  boolean pick = true;
  float speed = 1;

  Coin(float x, float y) {
    position = new PVector(x, y);
    img = loadImage("coin.gif");

    speed = speed + random(1, 5);
  }

  void update() {
    position.x -= speed;
    if (position.x < 0) {
      position.x = width;
      position.y = random(150, 300);
    }
    if(position.dist(girl.position) < 5) {      
      pick = false;
    }    
  }

  void draw() {
    if (pick) {
    image(img, position.x, position.y, 80, 80);
    }
  }

  void run() {
    update();
    draw();
  }
}
