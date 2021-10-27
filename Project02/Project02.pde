import gifAnimation.*;
Gif gif;
Background bg;
Girl girl;

ArrayList<Coin> coins;
ArrayList<Monster> bats;

float start;
float floor;
float gravity = 0.98;

int total;
int markTime = 0;
int batInterval = 1000;
int catchRange = 30;

boolean isJump = false;

void setup() {
  size(910, 512, P2D);
  start = 0;
  floor = height-190;
  total = 10;

  gif = new Gif(this, "rungirl.gif");
  gif.loop();
  gif.play();

  bg = new Background(start, start);
  girl = new Girl(start, floor);

  coins = new ArrayList<Coin>();
  bats = new ArrayList<Monster>();
}

void draw() {
  bg.run();
  girl.run();

  int t = millis();
  if (t > markTime + batInterval ) {
    coins.add(new Coin(width, 80));
    bats.add(new Monster());
    markTime = t;
  }
  for (Coin coin : coins) {
    coin.run();
  }
  for (Monster monster : bats) {
    monster.run();
    if (girl.position.dist(monster.position) < catchRange) {
      background(0);
      textSize(50);
      text("GAME OVER", width/2-100, height/2);
      fill(random(255));
    }
  }
}
