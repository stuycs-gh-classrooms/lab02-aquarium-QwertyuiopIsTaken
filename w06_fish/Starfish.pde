class Starfish extends Animal {
  Starfish(int x, int y, int vx, int vy, int sx, int sy) {
    super(x, y, vx, vy, sx, sy);
    img = loadImage("Starfish.png");
  }
  
  void collision() {
    v.y = 0;
    if (pos.x >= width - sizeX || pos.x <= 0) {
      v.x *= -1;
    }
    if (pos.y <= height - sizeY) {
      v.y = 1;
    }
  }
}
