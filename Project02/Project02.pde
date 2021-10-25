import gifAnimation.*;

Girl girl;
Coin coin;
Bat bat;
PImage B1, B2, B3;


void setup() {
  size(1080, 500, P2D);
  
  B1 =loadImage("1.jpg");
  B2 =loadImage("2.jpg");
  B3 =loadImage("3.jpg");
  imageMode(CENTER);
  
  girl = new Girl(this, "rungirl.gif");
  girl.loop();
  girl.play();
}

void draw() {
}
