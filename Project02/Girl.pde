class Girl {

  boolean alive = true;
  PVector position, target1, target2;
  PImage img;
  float speed;
  float tempX, tempY;
  float jumpHeight = 100;

  Girl(float x, float y) {
    position = new PVector(x, y);
    target1 = new PVector(mouseX, y);
    target2 = new PVector(x, jumpHeight);    
    //img = loadImage("rungirl.gif");
    speed = 2;
  }

  void update() {
   position = position.lerp(target1, 0.5);
    if (position.x < width) {
      position.x += speed;
    }   
     isJump = position.dist(target2) < 10;
     if (isJump) {
        position.y += speed;
     }else {
       isJump = false;
     }
  }

  void jump() {
    //else if {
       position.lerp(target2, 0.5);
    //} 
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
