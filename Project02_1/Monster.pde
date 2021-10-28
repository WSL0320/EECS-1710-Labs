class Monster {

  boolean right;
  boolean end = true;
  PVector position, target;
  float speed = 0.01;
  float tempX = 612;
  float tempY = 0;
  int m;

  Monster() {
    float x1, x2;
    float y = random(tempY, floor);
    float pickSide =random(1);
    if (pickSide < 0.5) {
      right = true;
      x1 = -tempX;
      x2 = width + tempX;
    } else {
      right = false;
      x1 = width + tempX;
      x2 = -tempX;
    }

    position= new PVector(x1, y);
    target= new PVector(x2, y);
  }

  void update() {
    position.lerp(target, speed);
  }

  void draw() {
    if (end) {
      image(mgif[m], position.x, position.y, 130, 130);
      if (frameCount % 10 == 0) {
        m++;
      }

      if (m== mFrames) {
        m= 0;
      }
    }
  }

  void run() {
    update();
    draw();
  }
}
