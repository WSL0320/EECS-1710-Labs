class Background {

  float bgspeed;
  float x, y;
  int b;

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
    imageMode(CORNER);
    image(bgif[b], x, y);
    image(bgif[b], x+910, y);
    x -= bgspeed;

    if (frameCount % 5 == 0) {
      b++;
    }

    if (b == bFrames) {
      b= 0;
    }
  }

  void run() {
    update();
    draw();
  }
}
