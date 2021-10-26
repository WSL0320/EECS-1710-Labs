class Background {

  PImage img;
  float bgspeed;
  float x, y;

  Background(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    bgspeed = 2;
  }

  void update() {
    if (x < -910 || x > 0) {
      bgspeed *= -1;
    }
    if (x < -910) {
      x = 0;
    }
  }

  void draw() {
    img = loadImage("bg.gif");
    imageMode(CORNER);
    image(img, x, y);
    image(img, x+910, y);
    x -= bgspeed;
  }

  void run() {
    update();
    draw();
  }
}
