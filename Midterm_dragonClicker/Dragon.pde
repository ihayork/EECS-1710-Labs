class Dragon{
  PVector position, target;
  boolean isMoving = false;
  PImage dragonIMG, dragonFlipIMG;
  
  Dragon(){
    position = new PVector(300, 300);
    target = new PVector(position.x + random(-50, 50), position.y + random(-50, 50));
    dragonIMG = loadImage("dragon.png");
    dragonFlipIMG = loadImage("dragonFlip.png");
  }
  
  void update() {
    
    isMoving = (position.x != target.x) && (position.y != target.y);
    
    if(isMoving) {
      position = position.lerp(target, 0.05);
      if(position.dist(target) < 5) {
        target = new PVector(position.x + random(-50, 50), position.y + random(-50, 50));
        if(target.x < 50) {
          target.x = 50;
        }
        if(target.x > 550) {
          target.x = 550;
        }
        if(target.y < 50) {
          target.y = 50;
        }
        if(target.y > 550) {
          target.y = 550;
        }
      }
    }
  }
  
  void draw(){
    imageMode(CENTER);
    if(position.x >= target.x){
      image(dragonIMG, position.x, position.y);
    }
    if(position.x < target.x){
      image(dragonFlipIMG, position.x, position.y);
    }
  }
  
  void run() {
    update();
    draw();
  }
}
