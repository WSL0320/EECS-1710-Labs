class Girl {

  boolean alive = true;
  PVector position, target;
  PImage img;
  float speed, speedX1;
  float tempX, tempY;
  float jumpHeight = 100;

  Girl(float x, float y) {
    img = loadImage("rungirl.gif");
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
      if (position.y <= floor) {
        position.y = floor;
      } else {
        position.y += speed;
      }
      if (position.dist(target) < 50) {
        position.y += speed;
      }
    }
  }

  void jump() {
    position.y -= speed;
  }

  void draw() {
    image(img, position.x, position.y, 120, 120);
    position.x = mouseX;
  }

  void run() {
    update();
    draw();
  }
}
