class Girl {

  boolean jump = false;
  PVector position, target;
  PImage img;
  float speed;
  float tempX, tempY;
  float jumpHeight = 100;

  Girl(float x, float y) {
    position = new PVector(x, y);
    target =  new PVector(x, jumpHeight);
    img = loadImage("rungirl.gif");
    speed = 2;
  }

  void update() {
    if (mouseX < width) {
      mouseX += speed;
    }
    if (position.y == jumpHeight) {
      isJump = true;
      position.y += speed;      
    } else {
      isJump = false;
      //position.y = floor;
    }
  }

  void jump() {
    if (!isJump) {
      position = position.lerp(target, 0.5);
    }
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
