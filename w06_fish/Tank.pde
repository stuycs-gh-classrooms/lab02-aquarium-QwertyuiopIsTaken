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
  
  void survive() {
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).waysToDie();
    }
  }
 
  void addAnimal(int mx, int my, int type) {
    if (type == -1) {
      type = int(random(4));
    }
    if (type == STARFISH) {
      animals.add(new Starfish(mx, my, 50, 50, type));
    } else if (type == CLOWNFISH) {
      animals.add(new Clownfish(mx, my, 50, 50, type));
    } else if (type == CRAB) {
      animals.add(new Crab(mx, my, 45, 30, type));
    } else if (type == SALMON) {
      animals.add(new Salmon(mx, my, 60, 35, type));
    } else {
      animals.add(new Animal(mx, my, 60, 60, type));
    }
  }
  
  void removeAnimal(int index) {
    animals.remove(index);
  }
  
  void removeAnimal(Animal ani) {
    animals.remove(ani);
  }
  
  void famine() {
    for (int i = animals.size() - 1; i >= 0; i--) {
      animals.remove(i);
    }
  }
  
  void printSize() {
    println(animals.size());
  }
}
