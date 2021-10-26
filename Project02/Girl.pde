class Girl {
  
  PImage[] animation;
  Gif loopingGif;
  Gif nonLoopingGif;
  boolean jump = false;
  PVector position, target, jpoint;
  PImage img;
  float speed;
  
  Girl(float x, float y) {
    position = new PVector(x, y);
    target =  new PVector(position.x, 120);
    jpoint =  new PVector(position.x, 120);
    img = loadImage("rungirl.gif");
    
    //loopingGif = new Girl(this, "rungirl.gif");
    //loopingGif.loop();
    //nonLoopingGif = new Girl(this, "rungirl.gif");
    //nonLoopingGif.play();
    //nonLoopingGif.ignoreRepeat();
    speed = 1.5;
  }
  
  void update() {
     if (mouseX < width) {
        mouseX += speed;
     }
  }
  
  void jump() {        
     position = position.lerp(target, 0.8);
     if (position.dist(jpoint) < 5) {
       position.x = gravity;
     }
  }

  void draw() {
    image(img, position.x, position.y, 120, 120);
    //imageMode(CENTER);
    position.x = mouseX;
  }

  void run() {
    update();
    draw();
  }
}
