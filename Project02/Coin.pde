class Coin {
  
  PImage img;
  PVector position;

  Coin(float x, float y) {
    position = new PVector(x, y);
    img = loadImage("coin.gif");
  }

  void update() {
    //TO DO  
  }

  void draw() {
    image(img, position.x, position.y, 120, 120);    
  }

  void run() {
    update();
    draw();
  }
}
