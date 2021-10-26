import gifAnimation.*;

Background bg;
Girl girl;
Coin coin;

ArrayList<Coin> coins;
ArrayList<Monster> bats;
ArrayList<Monster> ghosts;

float start;
float floor;
float gravity = 0.5;
float gravityDelta = 0.01;
float friction = 0.99;


void setup() {
  size(910, 512, P2D);
  start = 0;
  floor = height-190;
  
  bg = new Background(start, start);
  girl = new Girl(start, floor); 
  coin = new Coin(width, 100); 
  //bats = new ArrayList<Moster>();
  //ghosts = new ArrayList<Moster>();
  
}

void draw() {
  bg.run();
  girl.run();
  coin.run();
}
