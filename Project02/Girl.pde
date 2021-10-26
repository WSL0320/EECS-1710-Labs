class Girl {

  boolean jump = false;
  PVector position, target;
  PImage img;
  float speed;

  Girl(float x, float y) {
    position = new PVector(x, y);
    target =  new PVector(x, 120);

    img = loadImage("rungirl.gif");

    speed = 1;
    speed = speed + gravity;
  }

  void update() {
    if (mouseX < width) {
      mouseX += speed;
    }
    if (position.y > height) {
      speed = speed * -0.95;
      position.y = height;
    }
  }

  void jump() {
    position = position.lerp(target, 0.5);
  }

  void draw() {
    image(img, position.x, position.y, 120, 120);
    position.x = mouseX;
    position.y = position.y+speed;
  }

  void run() {
    update();
    draw();
  }
}
