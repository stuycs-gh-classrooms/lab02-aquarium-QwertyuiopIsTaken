class Animal {
  PVector pos;
  PVector v; // velocity
  int sizeX;
  int sizeY;
  PImage img;
 
  Animal(int x, int y, int sx, int sy) {
    pos = new PVector(x, y);
    sizeX = sx;
    sizeY = sy;
   
    v = PVector.random2D();
    v.mult(int(random(1, 3)));
   
    spawnPos();
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
 
  void display() {
    if (img == null) {
      img = loadImage("goldfish.png");
    }
    image(img, pos.x, pos.y, sizeX, sizeY);
  }
}
