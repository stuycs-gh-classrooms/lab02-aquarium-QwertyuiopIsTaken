class Salmon extends Animal {
  int yspeed = int(random(3, 5));
  int xspeed = int(random(2, 10));
  int size = 19;
  Salmon(int x, int y) {
    super(x, y);
  }

  void move() {
    if (ax >= width - size/2 ||
      ax <= size/2) {
      xspeed*= -1;
    }
    if (ay >= height - size/2 -50 ||
      ay <= size/2+50) {
      yspeed*= -1;
    }
    ax+= xspeed;
    ay+= yspeed;
  }

//override

void animal_display() {
  fill(255, 145, 164);
  circle(ax, ay, size);
}
}
