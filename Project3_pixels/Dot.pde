//-------------SOME CODE BELOW IS A VARIATION AND BUILT OFF OF THE 
//-------------ORIGINAL PIXELEXAMPLE CODE FROM THE EECS 1710 LECTURES.

class Dot {

  PVector origPosition, position, target, target1, target2, target3, target4;
  color col;
  
  Dot(float x, float y, PVector loc1, PVector loc2, PVector loc3, color _col) {
    position = new PVector(x + 22, y + 22);
    target1 = new PVector(x + 22, y + 22);
    target2 = new PVector(loc1.x + 150, loc1.y + 22);
    target3 = new PVector(loc2.x + 150, loc2.y + 150);
    target4 = new PVector(loc3.x + 22, loc3.y + 150);
    target = target1;
    
    col = _col;
  }
  
  void update() {
    position.lerp(target, 0.1);

    if(target.dist(new PVector(mouseX, mouseY)) < 8 && target == target1){//mouse moves dots
      target = target2;
    }
    if(target.dist(new PVector(mouseX, mouseY)) < 8 && target == target2){
      target = target3;
    }
    if(target.dist(new PVector(mouseX, mouseY)) < 8 && target == target3){
      target = target4;
    }
    if(target.dist(new PVector(mouseX, mouseY)) < 8 && target == target4){
      target = target1;
    }
  }
  
  void draw() {
    stroke(col);
    strokeWeight(2);
    point(position.x, position.y);
  }
  
  void run() {
    update();
    draw();
  }

}
