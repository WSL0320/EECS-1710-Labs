import gifAnimation.*;

Girl girl;
PImage B1, B2, B3;


void setup() {
  size(1080, 500, P2D);
  
  girl = new Girl(this, "rungirl.gif");
  girl.loop();
  girl.play();
}

void draw() {
}
