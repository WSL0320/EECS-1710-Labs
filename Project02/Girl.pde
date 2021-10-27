class Girl {

  boolean alive = true;
  PVector position, target;
  PImage img;
  float speed;
  float tempX, tempY;
  float jumpHeight = 100;

  Girl(float x, float y) {
    position = new PVector(x, y);
    target = new PVector(x, jumpHeight);
    speed = 2;
  }

  void update() {
    if (position.x < width) {
      mouseX += speed;
    }
    if (position.dist(target) < 50) {
      position.y += speed;
    }
  }

  void jump() {
    position.lerp(target, 0.8);
  }

  void draw() {
    image(gif, position.x, position.y, 120, 120);
    position.x = mouseX;
  }

  void run() {
    update();
    draw();
  }
}
