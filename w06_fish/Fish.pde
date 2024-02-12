class Fish extends Animal {
  Fish(int x, int y, int vx, int vy, int sx, int sy) {
    super(x, y, vx, vy, sx, sy);
    img = loadImage("fishy.png");
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
