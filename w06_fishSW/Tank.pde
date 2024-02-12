class Tank {
  int xcor;
  int ycor;
  int twidth;
  int theight;
  int floor;
  PImage img = loadImage("https://media.istockphoto.com/id/672054060/photo/underwater-scene-with-bubbles-and-sunbeams-3d-illustration.jpg?s=612x612&w=0&k=20&c=nYO68AWp8QZpfrSV9QKRxb5EcXK8k7aDswiV1y0BOak=");
  ArrayList<Animal> a = new ArrayList();


  Tank(int tx, int ty, int tw, int th, int heightfloor) {
    xcor = tx;
    ycor = ty;
    twidth = tw;
    theight = th;
    floor = heightfloor;
  }

  void display() {
    image(img, xcor, ycor, twidth, theight);
    fill(194, 178, 128);
    rect (xcor, theight, twidth, height+theight);
    for (int r =0; r<a.size(); r++) {
      Animal an= a.get(r);
      an.animal_display();
    }
  }

  void moveAnimals() {
    for (int r =0; r<a.size(); r++) {
      Animal an= a.get(r);
      an.move();
    }
  }


  void addAnimal(int x, int y) {
    if (y <= height &&
      y >= height-50) {
      a.add(new Crabs(x, y));
    } else {
      a.add(new Salmon(x, y));
    }
  }
}
