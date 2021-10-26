class Monster {
  
  PImage img1, img2;
  PVector position;
  float speed = 50;
  int maktime = 0;
  int interval =1000/20;

  Monster(float x, float y) {
    position = new PVector(x, y);
    img1 = loadImage("bat.gif");
    img2 = loadImage("ghost.gif");
  }

  void update() {
    //TO DO  
  }

  void draw() {
    image(img1, position.x, position.y, 120, 120);
    image(img2, position.x, position.y, 120, 120);
  }

  void run() {
    update();
    draw();
  }
}
