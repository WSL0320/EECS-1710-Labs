class Monster {
  
  boolean isLeft;
  PImage bats, ghosts;
  PVector position, target;
  float speed = 0.01;
  float tempX = 612;
  //float tempY = 150;
  
  Monster() {
    float x1, x2;
    float y = floor;
    float pickSide =random(1);
    if (pickSide < 0.5) {
      isLeft = true;
      x1 = -tempX;
      x2 = width + tempX;
    } else {
      isLeft = false;
      x1 = width + tempX;
      x2 = -tempX;
    }
    
    position= new PVector(x1, y);
    target= new PVector(x2, y);
    
    bats = loadImage("ghost.gif");
    ghosts = loadImage("ghost.gif");
  }
  
  void update() {
    position.lerp(target, speed);
  }

  void draw() {    
    image(bats, position.x, position.y, 130, 130);
    //image(ghosts, 0, floor, 130, 130);
  }

  void run() {
    update();
    draw();
  }
}
