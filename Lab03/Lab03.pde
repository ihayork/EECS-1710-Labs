float rotSeconds = 0;
float rotMinutes = 0;
float rotHours = 0;
int prevSecond = 0;
int prevMinute = 0;
int prevHour = 0;

float faceSize = 500;
float lengthSecondHand = 220;
float lengthMinuteHand = 200;
float lengthHourHand = 100;

PImage backdrop;

void setup() {
  size(800, 600, P2D); 
  strokeWeight(2);
  ellipseMode(CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  backdrop = loadImage
}

void draw() {
  
  
  int s = second();
  int m = minute();
  int h = hour();
  
  if (s != prevSecond) {
    rotSeconds = ((float) s / 60) * TWO_PI;
    print(s);
    prevSecond = s;
  }
  
  if (m != prevMinute) {
    rotMinutes = ((float) m / 60) * TWO_PI; 
    print(m);
    prevMinute = m;
  }
  
  if (h != prevHour) {
    rotHours = ((float) h / 12) * TWO_PI;
    print(h);
    prevHour = h;
  }
  
  fill(255);
  stroke(0);
  ellipse(width/2, height/2, faceSize, faceSize);
  
  for(int i=0; i<12; i++) {
    float rot = ((float) i/12) * TWO_PI;
    pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    line(0, 220, 0, 240);
    popMatrix();
  }
  
  for(int i=0; i<60; i++) {
    float rot = ((float) i/60) * TWO_PI;
    pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    line(0, 235, 0, 240);
    popMatrix();
  }
  
  
  pushMatrix(); //second hand
  translate(width/2, height/2);
  rotate(rotSeconds);
  fill(0);
  stroke(0);
  line(0, 0, 0, -lengthSecondHand);
  ellipse(0, -lengthSecondHand, 10,10);
  popMatrix();
  
  pushMatrix(); //minute hand
  translate(width/2, height/2);
  rotate(rotMinutes);
  strokeWeight(4);
  line(0, 0, 0, -lengthMinuteHand);
  ellipse(0, -lengthMinuteHand, 10,10);
  popMatrix();
  
  pushMatrix(); //hour hand
  translate(width/2, height/2);
  rotate(rotHours);
  strokeWeight(7);
  line(0, 0, 0, -lengthHourHand);
  ellipse(0, -lengthHourHand, 10,10);
  popMatrix();
  
  strokeWeight(2);
  ellipse(width/2, height/2, 10, 10);
  
  fill(255);
  rect(75, height/2, 100, 540);
  rect((width - 75), height/2, 100, 540);
  
  fill(135, 126, 240);
  rect(75, ((m*9)/2) + 30, 100, m*9);
  rect((width - 75), ((s*9)/2) + 30, 100, s*9);
  
  for(int i=0; i<60; i = i + 10){
    fill(255);
    line(25, (i*9) + 30, 75, (i*9) + 30);
    line((width - 25), (i*9) + 30, (width - 75), (i*9) + 30);
  }
}
