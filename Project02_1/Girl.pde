class Girl {

  boolean alive = true;
  PVector position, target;
  float speed, speedX1=0.2;
  float tempX, tempY;
  float jumpHeight = 100;
  int f;

  Girl(float x, float y) {
    position = new PVector(x, y);
    target = new PVector(x, jumpHeight);
    speed = 8;
  }

  void update() {
    if (isJump) {
      girl.jump();
    }
    if (position.y <= jumpHeight) {
      isJump = false;
    }
    if (isJump == false) {
      if (position.y >= floor) {
        position.y = floor;
      } else {
        position.y += speed;
        f = 4;
      }
      if (position.dist(target) < 50) {
        position.y += speed;
      }
    }
  }

  void jump() {
    position.y -= speed;
    f = 3;
  }

  void draw() {
    image(gif[f], position.x, position.y, 120, 120);
    if (frameCount % 5 == 0) {
      f++;
    }

    if (f== numberOfFrames) {
      f= 0;
    }
    position.x = mouseX;
  }

  void run() {
    update();
    draw();
  }
}
