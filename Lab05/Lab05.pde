import processing.sound.*;

SoundFile soundFile;

PVector target, position;
boolean isMoving = false;

PFont font;

void setup(){
  size(800, 600, P2D);
  rectMode(CENTER);
  ellipseMode(CENTER);
  target = new PVector(width/2, height/2);
  position = new PVector(target.x, target.y);
  
  font = createFont("Arial", 15);
  textFont(font, 15);
  
  soundFile = new SoundFile(this, "goomba.mp3");
  soundFile.loop();
}

void draw(){
  fill(255);
  stroke(255);
  rect(width/2, height/2, width, height);
  
  stroke(0);
  line(width/2, height/2, width/2, height/2 + 100);
  line(width/2, height/2, width/2, height/2 - 100);
  line(width/2, height/2, width/2 + 100, height/2);
  line(width/2, height/2, width/2 - 100, height/2);
  
  ellipse(width/2, height/2, 10, 10);
  ellipse(width/2, height/2 + 100, 10, 10);
  ellipse(width/2 + 100, height/2, 10, 10);
  ellipse(width/2, height/2 - 100, 10, 10);
  ellipse(width/2 - 100, height/2, 10, 10);
  
  fill(0);
  text("Use WASD and space to change the sound", 50, 50);
  
  isMoving = !(position.x == target.x) && !(position.y == target.y);
  
  position = position.lerp(target, 0.1);
  fill(188);
  ellipse(position.x, position.y, 25, 25);
  
  float playbackSpeed = map(position.y, height/2 + 100, height/2 - 100, 0.5, 2.0);
  soundFile.rate(playbackSpeed);
  
  float amplitude = map(position.x, width/2 - 100, width/2 + 100, 0.2, 1.0);
  soundFile.amp(amplitude);
  
}
