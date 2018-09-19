float fillColor;
int counter;

void setup() {
  size(displayWidth, displayHeight);
  background(#ffffff);
  fillColor = #000000;
  counter = 0;
}


  
    



void draw() {
  fill(0, 0, 0);
  textSize(30);
  text("A: black", 20, 20);
  text("B: yellow", 20, 60);
  text("D: green", 20, 100);
  text("E: blue", 20, 140);
  text("F: red", 20, 180);
  text("R: random background color", 20, 220);
  text("C: clear", 20, 260);
  text("S: save", 20, 300);
  text("1: width of the line = 5", 20, 340);
  text("2: width of the line = 10", 20, 380);

  
  
  
  for(int i = 0; i<10; ++i) {
    rect(1*i, 0, 20, 5);
    fill(fillColor);
  }
  
  if(mousePressed) {
    if (key == '1') {
      strokeWeight(5);
    }
    if (key == '2') {
      strokeWeight(10);
    }
      stroke(fillColor);
      line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  //assign colors
  //black
  if (counter == 0) {
    fillColor = #000000;
  }
  //yellow
  if (counter == 1) {
    fillColor = #FFFF00;
  }
  //red
  if (counter == 2) {
    fillColor = #FF0000;
  }
  //green
  if (counter == 3) {
    fillColor = #00FF00;
  }
  //blue
  if (counter == 4) {
    fillColor = #0000FF;
  }
  
  //key press actions
  if (key == 'a' || key == 'A') {
    counter = 0;
  }
  if (key == 'b' || key == 'B') {
    counter = 1;
  }
  if (key == 'f' || key == 'F') {
    counter = 2;
  }if (key == 'd' || key == 'D') {
    counter = 3;
  }if (key == 'e' || key == 'E') {
    counter = 4;
  }
  if (key == 's' || key == 'S') {
    save("image.png");
  }
  
}

void keyPressed(){
   //clear the screen
  if (key == 'c' || key == 'C') {
    background(#ffffff);
  }
  if (key == 'r' || key == 'R') {
    background(random(255), random(255), random(255));
  }
}
