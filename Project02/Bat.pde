class Bat {
  
  PVector position;
  float speed = 50;
  int maktime = 0;
  int interval =1000/20;

  Bat(float x, float y) {
    position = new PVector(x, y);
  }

  void update() {
    //TO DO  
  }

  void draw() {
  }


  void run() {
    update();
    draw();
  }
}
