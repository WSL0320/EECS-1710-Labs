import gifAnimation.*;

Background bg1;
Girl girl;
Coin coin;
Bat bat;
float xPos, delta;
float stopDelta = 0.5;
float speed = 0.03;


void setup() {
  size(925, 500, P2D);
  
 bg1 = new Background("bg1.jpg", delta*2, new PVector(0, 0));
  
  //girl = new Girl(this, "rungirl.gif");
  //girl.loop();
  //girl.play();
}

void draw() {
 imageMode(CORNER);
  pushMatrix();
  scale(height / bg0.img.height);
  delta = abs(xPos-width/2) * speed;
  if (mouseX < xPos) delta = -delta;
  
  if (xPos > width/3 && xPos < (width/3)*2 && delta > -stopDelta && delta < stopDelta) {
    delta = 0;
    bg1.speed = delta;  
    bg1.run();
    popMatrix();
}
