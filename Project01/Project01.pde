Nemo nemo;

PVector sharkPosition;
int speedX1;
int speedX2;
void setup() {
  size(1080, 720, P2D);
  sharkPosition = new PVector(width/2, height/2);

  nemo = new Nemo();
}
void draw() {
  sharkPosition = sharkPosition.lerp(nemo.position, 0.01);

  if (nemo.hunger <=0) {
    sharkPosition = new PVector(speedX2, speedX1);
    speedX1 ++;
  } else {
    speedX1 = int(sharkPosition.y);
    speedX2 = int(sharkPosition.x);
  }

  nemo.draw();
}
