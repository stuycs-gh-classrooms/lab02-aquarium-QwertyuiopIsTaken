Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;


void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 100;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

//void mouseClicked() {
//  t.addFish(mouseX, mouseY);
//}

void keyPressed() {
  if (key == 'c') {
    t.addCrab(mouseX, mouseY);
  } else if (key == 'f') {
    t.addFish(mouseX, mouseY);
  }
  }
  
