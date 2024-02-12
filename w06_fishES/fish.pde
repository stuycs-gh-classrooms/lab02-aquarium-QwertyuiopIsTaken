class fish extends Animal{
  
  fish() {
    super(mouseX, mouseY, 40, 20, 255, 0, 255, 1);
  }
  
    void collide() {
   location.add(velocity.x*speed, velocity.y*speed);
   if (location.x < 0 || location.x+w1 > width) {
      velocity.x *= -1;
    }
    if (location.y < 50 || location.y+h1 > height-100) { 
      velocity.y *= -1;
    }
  }
}
