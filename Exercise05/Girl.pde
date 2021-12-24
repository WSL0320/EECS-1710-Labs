class Girl {

  boolean alive = true;
  PVector position, target;
  PImage img;
  float speed, speedX1;
  float tempX, tempY;
  float jumpHeight = 80;

  Girl(float x, float y) {
    img = loadImage("rungirl.gif");
    position = new PVector(x, y);
    target = new PVector(x, jumpHeight);
    speed = 8;
    speedX1 = 8;
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
        position.y += speedX1;
      }
      if (position.dist(target) < 50) {
        position.y += speedX1;
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
