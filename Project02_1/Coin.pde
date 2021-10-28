class Coin {

  PImage img;
  PVector position;
  boolean pick = true;
  float speed = 1;
  int coinvalue;
  int c;
  Coin(float x, float y) {
    img = loadImage("coin.gif");
    position = new PVector(x, y);
    speed = speed + random(2, 7);
    coinvalue = 1;
  }

  void update() {
    position.x -= speed;
    if (position.x < -50) {
      position.x = width;
      position.y = random(100, 300);
    }
    if (position.dist(girl.position) < 50) {
      pick = false;
      if (coinvalue > 0) {
        score++;
        coinvalue = 0;
      }
    }
  }

  void draw() {
    if (pick) {
      image(cgif[c], position.x, position.y, 80, 80);
    }
    if (frameCount % 5 == 0) {
      c++;
    }

    if (c== numberOfFrames) {
      c= 0;
    }
  }

  void run() {
    update();
    draw();
  }
}
