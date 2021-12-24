class LetterGenerator {
  
  PShape w, s, l;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 150;

  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
        case 'w':
          letters.add(new Letter(w, px, py));
          break;
        case 's':
          letters.add(new Letter(s, px, py));
          break;
        case 'l':
          letters.add(new Letter(l, px, py));
          break;
      }
    }
    
  }

  void initShapes() {
  w = createShape();
  w.beginShape();
  w.vertex(18.370325, 18.448439);
  w.vertex(154.63919, 187.0398);
  w.vertex(262.0528, 46.21146);
  w.vertex(385.467, 186.38525);
  w.vertex(536.0825, 16.936676);
  w.vertex(386.4955, 48.68462);
  w.vertex(257.1825, -87.8198);
  w.vertex(144.22337, 50.37973);
  w.endShape(CLOSE);
 
 s = createShape();
  s.beginShape();
  s.vertex(-5.890991, -25.036835);
  s.vertex(2.9454956, 31.6642);
  s.vertex(-125.92047, 83.94699);
  s.vertex(17.673035, 127.39322);
  s.vertex(-114.13843, 263.623);
  s.vertex(-170.83948, 233.43152);
  s.vertex(-73.637695, 143.5935);
  s.vertex(-251.10455, 87.628876);
  s.endShape(CLOSE);
  }
  void update() {
    //
  }
  
  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    update();
    draw();
  }

}
