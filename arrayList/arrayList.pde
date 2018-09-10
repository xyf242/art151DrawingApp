//image?

int arraySize = 20;

ArrayList x, y;
PImage furby;

void setup() {
  size(displayWidth, displayHeight);
  x = new ArrayList();
  y = new ArrayList();
  furby = loadImage("furby.png");

  for (int i = 0; i < arraySize; i++) {
    //add items to the array list
    x.add(random(width));
    y.add(random(height));
  }
  println(x);
}

void draw() {
  background(82, 242, 255);
  for (int i = 0; i < x.size(); i++) {
    //grabbing the array values and "casting" them as float  
    float xValue = (float) x.get(i);
    float yValue = (float) y.get(i);
    
    ellipse(xValue, yValue, 50, 50);
    image(furby, xValue, yValue, 30, 30);
  }
  println(x.size());
}

void mouseReleased() { // void mouseDragged
  x.add(new Float(mouseX));
  y.add(new Float(mouseY));
}

void keyPressed() {
  if(key == 'x' && x.size()>0) {
    x.remove(0);
    y.remove(0);
  }
}
