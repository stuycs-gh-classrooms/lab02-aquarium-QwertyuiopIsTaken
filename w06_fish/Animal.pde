class Animal {
  PVector pos;
  PVector v; // velocity
  int sizeX;
  int sizeY;
  PImage img;
  int lastAte;
  int type;

  Animal(int x, int y, int sx, int sy, int te) {
    pos = new PVector(x, y);
    sizeX = sx;
    sizeY = sy;
    type = te;

    v = PVector.random2D();
    setSpeed();
    spawnPos();
    lastAte = millis();
  }

  void setSpeed() {
    v.mult(int(random(1, 3)));
  }

  void spawnPos() {
    if (pos.x >= width - sizeX) {
      pos.x = width - sizeX  - 1;
    } else if (pos.x <= 0) {
      pos.x = 1;
    }
    if (pos.y >= height - sizeY) {
      pos.y = height - sizeY - 1;
    } else if (pos.y <= tankY) {
      pos.y = tankY + 1;
    }
  }

  void move() {
    pos.x += v.x;
    pos.y += v.y;
    collision();
  }

  void collision() {
    if (pos.x >= width - sizeX || pos.x <= 0) {
      v.x *= -1;
    }
    if (pos.y >= height - sizeY || pos.y <= tankY) {
      v.y *= -1;
    }
  }
  
  void waysToDie() {
    hunger();
  }

  void hunger() {
    eat();
    if (millis() - lastAte >= 10000) {
      t.removeAnimal(this);
    }
  }

  void eat() {
    for (int i = 0; i < foods.size(); i++) {
      Food foodThing = foods.get(i);
      float xvar = foodThing.pos.x;
      float yvar = foodThing.pos.y;

      if (foodThing.pos.x < pos.x) {
        xvar = pos.x;
      } else if (foodThing.pos.x > pos.x + sizeX) {
        xvar = pos.x + sizeX;
      }
      if (foodThing.pos.y < pos.y) {
        yvar = pos.y;
      } else if (foodThing.pos.y > pos.y + sizeY) {
        yvar = pos.y + sizeY;
      }
      
      if (dist(foodThing.pos.x, foodThing.pos.y, xvar, yvar) <= 20 / 2) {
        foods.remove(i);
        lastAte = millis();
        println("Yummy");
      }
    }
  }

  void display() {
    if (img == null) {
      img = loadImage("goldfish.png");
    }
    image(img, pos.x, pos.y, sizeX, sizeY);
  }
}
