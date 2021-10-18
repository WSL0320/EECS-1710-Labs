class Nemo {
  
  PImage ocean, fish, fish1, fish2, fishbone, shark;
  PVector position, target;
  boolean isescaped = false;
  int hunger = 1000;
  int speedX1 =5;
  //int endTime = 5000;
  

  Nemo() {
    position = new PVector(width/2, height/2);
    target = new PVector(random(width), random(height));

    ocean = loadImage("ocean.jpg");
    fish1 = loadImage("fish.png");
    fish1.resize(fish1.width/15, fish1.height/15);
    fish2 = loadImage("fish2.png");
    fish2.resize(fish1.width, fish1.height);
    shark = loadImage("shark.png");
    shark.resize(shark.width/3, shark.height/3);
    fishbone = loadImage("fish3.png");
    fishbone.resize(shark.width/4, shark.height/4);
    fish = fish1;
  }

  void draw() {
    imageMode(CENTER);
    image(ocean, width/2, height/2, width, height);

   //PVector mousePos = new PVector(mouseX, mouseY);
    isescaped = position.dist(sharkPosition) < 350;

    if (isescaped) {
      fish = fish2;
      //hunger = millis();
      position = position.lerp(target, 0.08);
      int hungerclock = millis()%1000;
      if (hungerclock > 90) {
        hunger -= speedX1;
        print(hunger+"\n");
      }

      if (position.dist(target) < 5) {
        target = new PVector(random(width), random(height));
      }
    } else if ( !isescaped && hunger <= 0 ) {
      shark = fishbone;
      //mosX -= speedX1, mosY -= speedX1;
    } else {
      fish = fish1;
    }
    image(fish, position.x, position.y);
    //int mosX = mouseX+70, mosY= mouseY-15;
    image(shark, sharkPosition.x, sharkPosition.y);
  }
}
