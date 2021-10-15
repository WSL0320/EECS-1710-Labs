void setup() {
  size(500, 500);
}

void draw() {
  background(20);
  clock();
}

void clock() {
  translate(250, 250);
  rotate(radians(-90));

  int sc = second();
  int mn = minute();
  int hr = hour();

  noFill();

  strokeWeight(25);
  stroke(230, 110, 110);

  float end1 = radians(map(sc, 0, 60, 0, 360));
  arc(0, 0, 400, 400, 0, end1);

  stroke(155, 80, 205);
  float end2 = radians(map(mn, 0, 60, 0, 360));
  arc(0, 0, 350, 350, 0, end2);

  stroke(80, 130, 205);
  float end3 = radians(map(hr % 12, 0, 12, 0, 360));
  arc(0, 0, 300, 300, 0, end3);
}
