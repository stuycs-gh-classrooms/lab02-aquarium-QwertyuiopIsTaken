class Animal extends Tank{
  PVector location;
  PVector velocity;
  int r;
  int g;
  int b;
  int w1;
  int h1;
  color inside;
  int speed;
  
  Animal(int ax, int ay, int w1, int h1, int r, int g, int b, int speed) {
    location = new PVector(ax, ay);
    velocity = PVector.random2D();
    this.w1 = w1;
    this.h1 = h1;
    this.speed = speed;
    this.r = r;
    this.g = g;
    this.b = b;
    inside = color(r, g, b);
  }
  
   Animal(int ax, int ay) {
    location = new PVector(ax, ay);
  }
  
  Animal() {
  }
  
  void display() {
    fill(inside);
    noStroke();
    rect(location.x, location.y, w1, h1);
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
  
    void collideCrab() {
   location.add(velocity.x*speed, velocity.y*speed);
   if (location.x < 0 || location.x+w1 > width) {
      velocity.x *= -1;
    }
    if (location.y < 50 || location.y+h1 > height-100) { 
      velocity.y *= -1;
    }
  }
}
