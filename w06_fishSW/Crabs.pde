class Crabs extends Animal {
  int yspeed = int(random(1, 2));
  int xspeed = int(random(1, 8));
  int size = int(random(10, 15));
  Crabs(int x, int y) {
    super(x, y);
  }

  void move() {
    if (ax >= width - size/2 ||
      ax <= size/2) {
      xspeed*= -1;
    }
    if (ay >= height - size/2 ||
      ay <= height-50) {
      yspeed*= -1;
    }
    ax+= xspeed;
    ay+= yspeed;
  }

//override

void animal_display() {
  fill(255, 0, 0);
  circle(ax, ay, size);
}
}
