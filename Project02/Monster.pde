class Monster {

  boolean right;
  boolean end = true;
  PImage bats;
  PVector position, target;
  float speed = 0.01;
  float tempX = 612;
  float tempY = 0;

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

    bats = loadImage("bat.gif");
  }

  void update() {
    position.lerp(target, speed);
  }

  void draw() {
    if (end) {
      image(bats, position.x, position.y, 130, 130);
    }
  }

  void run() {
    update();
    draw();
  }
}
