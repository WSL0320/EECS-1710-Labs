import gifAnimation.*;
Gif gif;
Background bg;
Girl girl;

Coin[] coins = new Coin[3];
Monster[] bats = new Monster[1];

float start;
float floor;
float gravity = 0.98;

int total;

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
  for (int i = 0; i < bats.length; i++) {
    bats[i] = new Monster(width, 80);
  }  
}

void draw() {
  imageMode(CENTER);
  image(gif, mouseX, mouseY, 100, 100);

  bg.run();
  girl.run();
  for (int i = 0; i < total; i++) {
    coins[i].run();
  }
  for (int i = 0; i < bats.length; i++) {
    bats[i].run();
  }  
}
