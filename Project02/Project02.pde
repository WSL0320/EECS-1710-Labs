import gifAnimation.*;

Background bg;
Girl girl;

ArrayList<Coin> coins;
ArrayList<Monster> bats;
ArrayList<Monster> ghosts;

float start;
float floor;
float gravity = 0.5;
PFont font;

void setup() {
  size(910, 512, P2D);
  start = 0;
  floor = height-190;
  
  bg = new Background(width, height);
  girl = new Girl(start, floor); 
  coins = new ArrayList<Coin>();
  //bats = new ArrayList<Moster>();
  //ghosts = new ArrayList<Moster>();
  
}

void draw() {
  bg.run();
  girl.run();
  for (int i=coins.size()-1; i>=0; i++) {
    Coin coin = coins.get(i);
    coin.run();
  }
}
