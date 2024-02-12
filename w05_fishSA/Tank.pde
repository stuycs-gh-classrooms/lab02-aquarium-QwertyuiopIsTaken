class Tank {

  int tx;
  int ty;
  int tw;
  int th;
  int fh;
  
  ArrayList<PVector> fish;
  
  Tank (int x, int y, int w, int h, int hh){
  tx = x;
  ty = y;
  tw = w;
  th = h;
  fh = hh;
  fish = new ArrayList<PVector>();
  }
  
  void display(){
    noStroke();
    fill(#A7E7FA);
    rect(tx, ty, tw, th);
    fill(#E5D2B9);
    rect(tx, width - fh, tw, th);
    fill(#A1C96E);
    for (int p = 0; p < fish.size(); p++){
      rect(fish.get(p).x, fish.get(p).y, 20, 25);
    }
  }
  
  void moveAnimals(){
/*    int nx = (int)random(2);
    int ny = (int)random(2);
    if (nx == 1) {
      fish.get(p).x *= -1;
    }
    else if (nx == 2) {
      fish.get(p).x *= 1;
    }
    if (ny == 1){
      fish.get(p).y *= -1;
    }
    else if (ny == 2) {
      fish.get(p).y *= 1;
    }*/
    int vx = (int)random(2);
    int vy = (int)random(2);
    for (int p = 0; p < fish.size(); p++){
      
      fish.get(p).x += vx ;
      fish.get(p).y += vy ;
      if (fish.get(p).x >= width || fish.get(p).x <= 0) {
        vx *= -1;
      }
      if (fish.get(p).x >= height || fish.get(p).x <= 0) {
        vy *= -1;
      }
    }
  }
  
  void addAnimal(int x, int y) {
  PVector fishCor = new PVector();
  fishCor.x = x;
  fishCor.y = y;
  fish.add(fishCor);
  }
  
}//Tank Class
