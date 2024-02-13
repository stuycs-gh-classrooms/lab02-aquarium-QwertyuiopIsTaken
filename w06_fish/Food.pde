class Food {
  PVector pos;
  
  Food(int x, int y) {
    pos = new PVector(x, y);
  }
  
  void display() {
    fill(253, 253, 150);
    circle(pos.x, pos.y, 20);
  }
}
