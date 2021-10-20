class Cell{
  //the cells will move around the screen at random.
  //cells have a certain lifespan, they die after that amount of time has passed.
  //each cell has a certain chance of making a copy of itself at any point in time.
  //the copied cell has the same properties as the parent cell.
  //however the copied cell's lifespan starts from the beginning unlike the parent.
  //copied cells can also make copies of themselves.
  
  PVector position, target;
  boolean isMoving = false;
  boolean isAlive = true;
  int lifespan = 750;
  
  Cell(float x, float y){
    position = new PVector(x, y);
    target = new PVector(position.x + random(-50, 50), position.y + random(-50, 50));
    
  }
  
  void update(){
    if(isAlive){
      isMoving = (position.x != target.x) && (position.y != target.y);
    
      if(isMoving) {
        position = position.lerp(target, 0.1);
        if(position.dist(target) < 5) {
          target = new PVector(position.x + random(-50, 50), position.y + random(-50, 50));
          if(target.x < 15) {
            target.x = 15;
          }
          if(target.x > width - 15) {
            target.x = width - 15;
          }
          if(target.y < 15) {
            target.y = 15;
          }
          if(target.y > height - 15) {
            target.y = height - 15;
          }
        }
      }
      lifespan--;
      if(lifespan < 0){
        isAlive = false;
      }
    }
  }
  
  void draw(){
    if(isAlive){
      ellipseMode(CENTER);
      stroke(255, 0, 0);
      fill(255, 0, 0);
      ellipse(position.x, position.y, 20, 20);
    }
  }
  
  void run(){
    update();
    draw();
  }
  
}
