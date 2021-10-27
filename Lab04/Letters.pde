class classLetter{
  PVector position;
  PVector position1, position2, position3, position4, position5, position6, position7, position8;
  PVector position9, position10, position11, position12, position13, position14, position15;
  
  PVector[] positions = new PVector[15];
  
  int numPixels;
  
  classLetter(String str){
    position = new PVector((width/2) + random(-350, 350), (height/2) + random(-250, 250));
    switch(str){
      case "A":
        positions[0] = new PVector(position.x, position.y);
        positions[1] = new PVector(position.x - 10, position.y);
        positions[2] = new PVector(position.x + 10, position.y);
        positions[3] = new PVector(position.x - 10, position.y - 10);
        positions[4] = new PVector(position.x + 10, position.y - 10);
        positions[5] = new PVector(position.x, position.y - 20);
        positions[6] = new PVector(position.x - 10, position.y + 10);
        positions[7] = new PVector(position.x - 10, position.y + 20);
        positions[8] = new PVector(position.x + 10, position.y + 10);
        positions[9] = new PVector(position.x + 10, position.y + 20);
        numPixels = 10;
        break;
      case "B":
        positions[0] = new PVector(position.x, position.y);
        positions[1] = new PVector(position.x, position.y - 20);
        positions[2] = new PVector(position.x - 10, position.y);
        positions[3] = new PVector(position.x - 10, position.y + 10);
        positions[4] = new PVector(position.x - 10, position.y + 20);
        positions[5] = new PVector(position.x - 10, position.y - 10);
        positions[6] = new PVector(position.x - 10, position.y - 20);
        positions[7] = new PVector(position.x, position.y + 20);
        positions[8] = new PVector(position.x + 10, position.y + 10);
        positions[9] = new PVector(position.x + 10, position.y - 10);
        numPixels = 10;
        break;
      case "C":
        positions[0] = new PVector(position.x - 10, position.y);
        positions[1] = new PVector(position.x - 10, position.y + 10);
        positions[2] = new PVector(position.x - 10, position.y - 10);
        positions[3] = new PVector(position.x, position.y - 20);
        positions[4] = new PVector(position.x, position.y + 20);
        positions[5] = new PVector(position.x + 10, position.y - 20);
        positions[6] = new PVector(position.x + 10, position.y + 20);
        numPixels = 7;
        break;
      case "D":
        positions[0] = new PVector(position.x + 10, position.y);
        positions[1] = new PVector(position.x, position.y - 20);
        positions[2] = new PVector(position.x - 10, position.y);
        positions[3] = new PVector(position.x - 10, position.y + 10);
        positions[4] = new PVector(position.x - 10, position.y + 20);
        positions[5] = new PVector(position.x - 10, position.y - 10);
        positions[6] = new PVector(position.x - 10, position.y - 20);
        positions[7] = new PVector(position.x, position.y + 20);
        positions[8] = new PVector(position.x + 10, position.y + 10);
        positions[9] = new PVector(position.x + 10, position.y - 10);
        numPixels = 10;
        break;
      case "E":
        positions[0] = new PVector(position.x, position.y);
        positions[1] = new PVector(position.x, position.y - 20);
        positions[2] = new PVector(position.x - 10, position.y);
        positions[3] = new PVector(position.x - 10, position.y + 10);
        positions[4] = new PVector(position.x - 10, position.y + 20);
        positions[5] = new PVector(position.x - 10, position.y - 10);
        positions[6] = new PVector(position.x - 10, position.y - 20);
        positions[7] = new PVector(position.x, position.y + 20);
        positions[8] = new PVector(position.x + 10, position.y);
        positions[9] = new PVector(position.x + 10, position.y + 20);
        positions[10] = new PVector(position.x + 10, position.y - 20);
        numPixels = 11;
        break;
      case "F":
        positions[0] = new PVector(position.x, position.y);
        positions[1] = new PVector(position.x + 10, position.y - 20);
        positions[2] = new PVector(position.x - 10, position.y);
        positions[3] = new PVector(position.x - 10, position.y + 10);
        positions[4] = new PVector(position.x - 10, position.y + 20);
        positions[5] = new PVector(position.x - 10, position.y - 10);
        positions[6] = new PVector(position.x - 10, position.y - 20);
        positions[7] = new PVector(position.x, position.y - 20);
        positions[8] = new PVector(position.x + 10, position.y);
        numPixels = 9;
        break;
      
      
    }
  }
  
  void draw(){
    fill(0);
    stroke(0);
    for(int i = 0; i < numPixels; i++){
      rect(positions[i].x, positions[i].y, 10, 10);
    }
  }

}
