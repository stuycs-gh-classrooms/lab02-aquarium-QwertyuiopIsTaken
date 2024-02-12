class crab extends Animal {
    int diff = 1;
    crab() {
    super(mouseX, mouseY, 30, 30, 0, 0, 255, 2);
  }
      void collide() {
   location.add(velocity.x*speed, velocity.y*speed);
   if (location.x < 0 || location.x+w1 > width) {
      velocity.x *= -1;
    }
    if (location.y < height-100 || location.y+h1 > height) { 
      velocity.y *= -1;
    }
  }
}
