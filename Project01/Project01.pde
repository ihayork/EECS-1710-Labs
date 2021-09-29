PVector position1, target1, position2, target2, position3, target3;
boolean isMoving1 = false;
boolean isMoving2 = false;
boolean isMoving3 = false;

void setup() { 
  size(800, 600, P2D);
  
  position1 = new PVector(width/2, height/2);
  target1 = new PVector(random(width), random(height));
  position2 = new PVector(width/2, height/2);
  target2 = new PVector(random(width), random(height));
  position3 = new PVector(width/2, height/2);
  target3 = new PVector(random(width), random(height));
  
  ellipseMode(CENTER);
}

void draw() {
  fill(255, 9);
  rect(0, 0, width, height);
  
  //snake 1 ----------------------------------------------------------
  isMoving1 = (position1.x != target1.x) && (position1.y != target1.y);
  
  if(isMoving1) {
    position1 = position1.lerp(target1, 0.1);
    if(position1.dist(target1) < 5) {
      target1 = new PVector(position1.x + random(-100, 100), position1.y + random(-100, 100));
  
      if(target1.x < 15) {
        target1.x = 15;
      }
      if(target1.x > width - 15) {
        target1.x = width - 15;
      }
      if(target1.y < 15) {
        target1.y = 15;
      }
      if(target1.y > height - 15) {
        target1.y = height - 15;
      }
    }
  }
  
  stroke(255, 0, 0);
  fill(255, 0, 0);
  ellipse(position1.x, position1.y, 20, 20);
  
  //snake 2 -------------------------------------------------------------
  isMoving2 = (position2.x != target2.x) && (position2.y != target2.y);
  
  if(isMoving2) {
    position2 = position2.lerp(target2, 0.1);
    if(position2.dist(target2) < 5) {
      target2 = new PVector(position2.x + random(-100, 100), position2.y + random(-100, 100));
  
      if(target2.x < 15) {
        target2.x = 15;
      }
      if(target2.x > width - 15) {
        target2.x = width - 15;
      }
      if(target2.y < 15) {
        target2.y = 15;
      }
      if(target2.y > height - 15) {
        target2.y = height - 15;
      }
    }
  }
  
  stroke(0, 255, 0);
  fill(0, 255, 0);
  ellipse(position2.x, position2.y, 20, 20);
  
  //snake 3 ---------------------------------------------------------------
  isMoving3 = (position3.x != target3.x) && (position3.y != target3.y);
  
  if(isMoving3) {
    position3 = position3.lerp(target3, 0.1);
    if(position3.dist(target3) < 5) {
      target3 = new PVector(position3.x + random(-100, 100), position3.y + random(-100, 100));
  
      if(target3.x < 15) {
        target3.x = 15;
      }
      if(target3.x > width - 15) {
        target3.x = width - 15;
      }
      if(target3.y < 15) {
        target3.y = 15;
      }
      if(target3.y > height - 15) {
        target3.y = height - 15;
      }
    }
  }
  
  stroke(0, 0, 255);
  fill(0, 0, 255);
  ellipse(position3.x, position3.y, 20, 20);
}
