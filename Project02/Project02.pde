import gifAnimation.*;
Gif gif;
Background bg;
Girl girl;

Coin[] coins = new Coin[3];

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
  total = 3;

  gif = new Gif(this, "rungirl.gif");
  gif.loop();
  gif.play();

  bg = new Background(start, start);
  girl = new Girl(start, floor);

  for (int i = 0; i < total; i++) {
    coins[i] = new Coin(width, 80);
  }
  bats = new ArrayList<Monster>();
}

void draw() {
  bg.run();
  girl.run();
  int t = millis();
  if (t > markTime + batInterval ) {
    bats.add(new Monster());
    markTime = t;
  }
  for (Monster monster : bats) {
    monster.run();
    if (girl.position.dist(monster.position) < catchRange) {
      girl.alive = false;
    }
  }
  for (int i = 0; i < total; i++) {
    coins[i].run();
  }
}
