class Nemo {

  PImage ocean, fish, fish1, fish2, fish3, fishbone, shark;
  PVector position, target;
  PVector fishfood;
  boolean isescaped = false;
  int hunger = 1000;
  int speedX1 =5;

  Nemo() {
    position = new PVector(width/2, height/2);
    target = new PVector(random(width), random(height));
    fishfood = new PVector(random(width), random(height));

    ocean = loadImage("ocean.jpg");
    fish1 = loadImage("fish.png");
    fish1.resize(fish1.width/15, fish1.height/15);
    fish2 = loadImage("fish2.png");
    fish2.resize(fish1.width, fish1.height);
    fish3 = loadImage("fish1.png");
    fish3.resize(fish1.width, fish1.height);
    shark = loadImage("shark.png");
    shark.resize(shark.width/3, shark.height/3);
    fishbone = loadImage("fish3.png");
    fishbone.resize(shark.width/4, shark.height/4);
    fish = fish1;
  }

  void draw() {
    imageMode(CENTER);
    image(ocean, width/2, height/2, width, height);

    ellipseMode(CENTER);
    noStroke();
    fill(random(255));
    ellipse(fishfood.x, fishfood.y, 25, 25);

    isescaped = position.dist(sharkPosition) < 200;

    if (isescaped) {
      fish = fish2;

      position = position.lerp(target, 0.1);
      int hungerclock = millis()%1000;
      if (hungerclock > 90) {
        hunger -= speedX1;
        print(hunger+"\n");
      }

      if (position.dist(target) < 10) {
        target = new PVector(random(width), random(height));
      }
    } else if ( !isescaped && hunger <= 0 ) {
      shark = fishbone;
      fish = fish3;
      position = position.lerp(fishfood, 0.03);
    } else {
      fish = fish1;
    }
   
    image(fish, position.x, position.y);

    image(shark, sharkPosition.x, sharkPosition.y);
  }
}
