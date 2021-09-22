/*
IMPORTANT: READ COMMENTS FOR TUTORIAL!

Press WASD on your keyboard to move the cursor and draw a line that follows it.
The cursor begins in the center of the screen.

Press the E key to switch between draw mode and erase mode.
Draw mode by default is black, you can change this colour in the
first lines of code below. The eraser colour is white, like the background.

Press the R key to reset the canvas to white.
*/


color drawColour = color(0, 0, 0); //colour 1 black
color bgColour = color(255, 255, 255); //bg colour white

// /!\ DON'T MODIFY ANY CODE BELOW THIS POINT! /!\
//-------------------------------------------------

/* Ignore this block of code, I didn't know there was a color variable
class dataColour {
  int r, g, b;
  
  public dataColour(int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
}
*/

boolean ePressed = false;
color c1 = drawColour;
float posX;
float posY;

void setup() {
  background(bgColour);
  size(800, 600);
  ellipseMode(CENTER);
  rectMode(CENTER);
  posX = width/2;
  posY = height/2;
}

void draw() {
  fill(c1);
  stroke(c1);
  ellipse(posX, posY, 15, 15);
}

void keyPressed() {
  if(key == 'w') {
    posY = posY - 5;
  }
  if(key == 'a') {
    posX = posX - 5;
  }
  if(key == 's') {
    posY = posY + 5;
  }
  if(key == 'd') {
    posX = posX + 5;
  }
  if(key == 'e') {
    if(ePressed == false) {
      c1 = bgColour;
      ePressed = true;
      
    }
    if(ePressed == true) {
      c1 = drawColour;
      ePressed = false;
    }
  }
  if(key == 'r') {
    posX = width/2;
    posY = height/2;
    fill(bgColour);
    stroke(bgColour);
    rect(width/2, height/2, width, height);
  }
}
