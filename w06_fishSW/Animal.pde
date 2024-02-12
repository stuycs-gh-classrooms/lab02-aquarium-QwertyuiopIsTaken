class Animal {
  int ax;
  int ay;
  color c;
  int size;
  int yspeed = int(random(1, 3));
  int xspeed = int(random(1, 6));


  Animal(int x, int y) {
    ax = x;
    ay = y;
    size = 10;}

    
void move() {
    if (ax >= width - size/2 ||
        ax <= size/2) {
        xspeed*= -1;
     }
     if (ay >= height - size/2 || 
         ay <= size/2+50) {
         yspeed*= -1;
      }
     ax+= xspeed;
     ay+= yspeed;
  }
  
  
  void animal_display() {
    fill(255,0,0);
    circle(ax, ay, size);
  }
}
