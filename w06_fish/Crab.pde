class Crab extends Animal {
  boolean hitFloorYet = false;
  Crab(int x, int y, int sx, int sy, int te) {
    super(x, y, sx, sy, te);
    v.y = 1;
    img = loadImage("Crab.png");
  }
  
  void setSpeed() {
    v.mult(int(random(1, 3)) * 0.5);
  }
 
  void collision() {
    if (pos.x >= width - sizeX || pos.x <= 0) {
      v.x *= -1;
    }
    if (hitFloorYet && pos.y < height - floorH) {
      v.y *= -1;
    }
    if (pos.y > height - sizeY)    {
      hitFloorYet = true;
      v.y *= -1;
    }
  }
}
