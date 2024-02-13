class Salmon extends Animal {
  Salmon(int x, int y, int sx, int sy, int te) {
    super(x, y, sx, sy, te);
    img = loadImage("Salmon.png");
  }
  
  void setSpeed() {
    v.mult(int(random(1, 3)) * 1.75);
  }
 
  void spawnPos() {
    if (pos.x >= width - sizeX) {
      pos.x = width - sizeX  - 1;
    } else if (pos.x <= 0) {
      pos.x = 1;
    }
    if (pos.y >= height - sizeY - floorH) {
      pos.y = height - sizeY - floorH - 1;
    } else if (pos.y <= tankY) {
      pos.y = tankY + 1;
    }
  }
 
  void collision() {
    if (pos.x >= width - sizeX || pos.x <= 0) {
      v.x *= -1;
    }
    if (pos.y >= height - sizeY - floorH || pos.y <= tankY) {
      v.y *= -1;
    }
  }
}
