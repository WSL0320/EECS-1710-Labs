class Background {
  
  PImage img;
  PVector position;
  float bgspeed;
  float x, y;

  Background(float x, float y) {
    position = new PVector(x, y);
    img = loadImage("bg.gif");
    
    bgspeed = 2;
  }
  
  void update() {
    if (x > width || x < 0) {
      bgspeed *= -1;
    }
    if (x > width) {
      x = 0;
    }
   
    //if (position.x < width) {
      //position.x += bgspeed;
    //}  
  }
  
  void draw() {
    image(img, x, y);
    image(img, x-910, y);
     x += bgspeed;
    //image(img, position.x, position.y);   
  }
  
  void run() {
    update();
    draw();
  }
}
