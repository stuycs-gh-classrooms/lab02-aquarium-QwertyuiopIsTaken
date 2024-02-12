Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

int STARFISH = 0;
int FISH = 1;
int CRAB = 2;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup

void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}

void keyPressed() {
  if (key == '1') {
    t.addAnimal(mouseX, mouseY, 0);
  } else if (key == '2') {
    t.addAnimal(mouseX, mouseY, 1);
  } else if (key == '3') {
    t.addAnimal(mouseX, mouseY, 2);
  }
}
