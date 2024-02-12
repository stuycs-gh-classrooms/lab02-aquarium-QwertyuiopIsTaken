class Animal {
  PVector pos;
  PVector v;
  int sizeX;
  int sizeY;
  PImage img;
 
  Animal(int x, int y, int vx, int vy, int sx, int sy) {
    pos = new PVector(x, y);
    sizeX = sx;
    sizeY = sy;
    v = new PVector(vx, vy);
    // Prevents the animal from getting stuck
    if (pos.x >= width - sx) {
      pos.x = width - sx  - 1;
    } else if (pos.x <= 0) {
      pos.x = 1;
    }
    if (pos.y >= height - sy/2) {
      pos.y = height - sy/2 - 1;
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
    if (img != null) {
      image(img, pos.x, pos.y, sizeX, sizeY);
    } else {
      fill(255, 0, 255);
      rect(pos.x, pos.y, sizeX, sizeY);
    }
  }
}
