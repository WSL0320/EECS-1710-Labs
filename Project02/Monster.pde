class Monster {
  
  PImage bats, ghosts;
  PVector position;
  float speed = 3;
  boolean isLeft;
  
  Monster(float x, float y) {
    
    position= new PVector(x, y);
    
    bats = loadImage("bat.gif");
    ghosts = loadImage("ghost.gif");
  }
  
  void update() {  
    position.x -= speed;
    if (position.x < 0 || position.x > width) {
      speed = speed*-1;
      position.y = random(0, 200);
    }
    if (position.dist(girl.position) < 5) {
      background(255);
      textSize(50);
      text("GAME OVER", 320, 650); 
      fill(255, 0, 0);
    }
  }

  void draw() {    
    image(bats, position.x, position.y, 120, 120);
    image(ghosts, position.x+410, floor, 120, 120);
  }

  void run() {
    update();
    draw();
  }
}
