class Girl {
  
  PImage[] animation;
  Gif loopingGif;
  Gif nonLoopingGif;
  boolean jump = false;
  PVector position, target;
  PImage img;
  float speed;
  
  Girl(float x, float y) {
    position = new PVector(x, y);
    target =  new PVector(position.x, 120);
    img = loadImage("rungirl.gif");
    //loopingGif = new Girl(this, "rungirl.gif");
    //loopingGif.loop();
    //nonLoopingGif = new Girl(this, "rungirl.gif");
    //nonLoopingGif.play();
    //nonLoopingGif.ignoreRepeat();
    
  }
  
  void update() {
    
  }
  
  void jump() {        
     position = position.lerp(target, 0.8);
  }

  void draw() {
    image(img, position.x, position.y, 120, 120);    
  }

  void run() {
    update();
    draw();
  }
}
