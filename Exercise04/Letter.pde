class Letter {
  
  PShape a;
  PVector position;
  PVector[] vertices;
  float spread = 0.2;
  
  Letter(PShape _a, float x, float y) {
    a = _a;
    position = new PVector(x, y, random(-10, 10));
    vertices = new PVector[a.getVertexCount()];
  }
  
  void update() {
    for (int i=0; i<vertices.length; i++) {
      vertices[i] = a.getVertex(i);
      vertices[i].add(new PVector(random(-spread, spread), random(-spread, spread)));
      a.setVertex(i, vertices[i]);
    }
  }
  
  void draw() {
    
    pg.pushMatrix();
    pg.shapeMode(CENTER);
    pg.translate(position.x, position.y, position.z);
    pg.shape(a, 0, 0);
    pg.popMatrix();
  }
  
  void run() {
    update();
    draw();
  }
  
}
