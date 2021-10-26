class Coin {

  PImage img;
  PVector position;
  boolean pick = true;
  float speed = 1;

  Coin(float x, float y) {
    position = new PVector(x, y);
    img = loadImage("coin.gif");

    speed = speed + random(2, 5);
  }

  void update() {
    position.x = position.x - speed;
    if (position.x < 0) {
      position.x = width;
      position.y = random(150, 300);
    }
  }

  void draw() {
    image(img, position.x, position.y, 77, 77);
  }

  void run() {
    update();
    draw();
  }
}
