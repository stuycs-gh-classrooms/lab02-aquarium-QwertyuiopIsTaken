class Tank {
  int tx;
  int ty;
  int tw;
  int th;
  int fh;
  ArrayList<Animal> animals;
 
  Tank(int _tx, int _ty, int _tw, int _th, int _fh) {
    tx = _tx;
    ty = _ty;
    tw = _tw;
    th = _th;
    fh = _fh;
    animals = new ArrayList<Animal>();
  }
 
  void display() {
    noStroke();
    fill(0, 255, 255);
    rect(tx, ty, tw, th);
    fill(245, 245, 220);
    rect(tx, width - fh, tw, fh);
   
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).display();
    }
  }
 
  void moveAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).move();
    }
  }
 
  void addAnimal(int mx, int my) {
    int vx = int(2 * pow(-1, int(random(2, 4))));
    int vy = int(2 * pow(-1, int(random(2, 4))));
    
    int type = int(random(3));
    if (type == STARFISH) {
      animals.add(new Starfish(mx, my, vx, vy, 50, 50));
    } else if (type == FISH) {
      animals.add(new Fish(mx, my, vx, vy, 50, 50));
    } else {
      animals.add(new Animal(mx, my, vx, vy, 40, 20));
    }
  }
}
