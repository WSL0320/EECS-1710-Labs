class Monster {
  
  PImage bats, ghosts;
  PVector position;
  float speed = 50;
  int maktime = 0;
  int interval =1000/20;

  Monster(float x, float y) {
    position = new PVector(x, y);
    bats = loadImage("bat.gif");
    ghosts = loadImage("ghost.gif");
  }

  void update() {  
  }

  void draw() {
    image(bats, position.x, position.y, 100, 100);
    image(ghosts, position.x, position.y, 100, 100);
  }

  void run() {
    update();
    draw();
  }
}
