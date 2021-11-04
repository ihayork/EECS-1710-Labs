void keyPressed(){
  if(key == 'w'){
        
      target = new PVector(width/2, height/2 - 100);
        
  } else if(key == 's'){
        
      target = new PVector(width/2, height/2 + 100);
        
  } else if(key == 'a'){
        
      target = new PVector(width/2 - 100, height/2);
                
  } else if(key == 'd'){
        
      target = new PVector(width/2 + 100, height/2);
        
  } else if(key == ' '){
  
      target = new PVector(width/2, height/2);
  
  }
}
