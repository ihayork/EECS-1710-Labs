color drawColour = color(0, 0, 0);
color bgColour = color(255, 255, 255);
float posX;
float posY;
boolean eraser = false;

void setup() {
  size(800, 600);
  background(bgColour);
  ellipseMode(CENTER);
  rectMode(CENTER);
  posX = width/2;
  posY = height/2;
}

void draw() {  
  if (mousePressed && !eraser) {
    fill(drawColour);
    stroke(drawColour);
    ellipse(mouseX, mouseY, 15, 15);
  }
  if(mousePressed && eraser) {
    fill(bgColour);
    stroke(bgColour);
    ellipse(mouseX, mouseY, 15, 15);
  }
}

void keyPressed() {
  if(key == 'f') {
    eraser = !eraser;
  }
  if(key == 'r') {
    fill(bgColour);
    stroke(bgColour);
    rect(posX, posY, width, height);
  }
}
