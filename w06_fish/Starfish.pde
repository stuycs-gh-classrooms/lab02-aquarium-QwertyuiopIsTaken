class Starfish extends Animal {
  Starfish(int x, int y, int sx, int sy, int te) {
    super(x, y, sx, sy, te);
    img = loadImage("Starfish.png");
  }
  
  void setSpeed() {
    v.mult(int(random(1, 3)) * 0.25);
  }
  
  void waysToDie() {
    hunger();
    overcrowd();
  }
 
  void overcrowd() {
    int totalCount = 0;
    for (int i = 0; i < t.animals.size(); i++) {
      Animal ani = t.animals.get(i);
      if (ani.type == STARFISH) {
        totalCount++;
      }
    }
    if (totalCount > 10) {
      for (int i = 0; i < t.animals.size(); i++) {
        Animal ani = t.animals.get(i);
        if (ani.type == STARFISH && ani != this) {
          if (dist(ani.pos.x, ani.pos.y, pos.x, pos.y) <= 20) {
            t.removeAnimal(this);
          }
        }
      }
    }
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
