class Background {
  
  PImage img;
  PVector position;
  float bgspeed;
  float x, y;

  Background(float x, float y) {
    position = new PVector(x, y);
    img = loadImage("bg.gif");
    
    bgspeed = -0.5;
  }
  
  void update() {
    if (x < width) {
      x += bgspeed;
      println(x);
    }
    if (x < -100) {
      x = 0;
    }
   
    //if (position.x < width) {
      //position.x += bgspeed;
    //}  
  }
  
  void draw() {
    image(img, x, y);
    //image(img, position.x, position.y);   
  }
  
  void run() {
    update();
    draw();
  }
}
