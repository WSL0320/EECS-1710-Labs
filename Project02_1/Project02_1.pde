import gifAnimation.*;
PImage[] gif;
PImage[] bgif;
PImage[] cgif;
PImage[] mgif;
int numberOfFrames;
int bFrames = 480;
int mFrames = 4;
Background bg;
Girl girl;

boolean isJump = false;

PFont font;

ArrayList<Coin> coins;
ArrayList<Monster> bats;

float start;
float floor;

int total;
int markTime = 0;
int batInterval = 1000;
int catchRange = 30;
int fontSize= 50;
int score = 0;

void setup() {
  size(910, 512, P2D);
  start = 0;
  floor = height-190;
  total = 10;
  numberOfFrames = 8;
  gif = new PImage[numberOfFrames];

  for (int i = 0; i < numberOfFrames; i++) {
    gif[i] = loadImage("3_0000"+i+".png");
  }
  bgif = new PImage[bFrames];

  for (int i = 0; i < bFrames; i++) {
    bgif[i] = loadImage("bg_"+i+".png");
  }
  cgif = new PImage[numberOfFrames];

  for (int i = 0; i < numberOfFrames; i++) {
    cgif[i] = loadImage("coin_0000"+i+".png");
  }
  mgif = new PImage[mFrames];

  for (int i = 0; i < mFrames; i++) {
    mgif[i] = loadImage("bat_0000"+i+".png");
  }

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
      girl.position = monster.position;
      background(0);
      textSize(fontSize);
      text("GAME OVER", width/2-130, height/2);
      fill(random(255));
    }
  }
  textSize(fontSize);
  text(score, width-50, height-50);
}
