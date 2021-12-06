import processing.sound.*;
float time;
SoundFile tap;
boolean beat1, beat2, beat3, beat4, beat5, beat6, beat7, beat8, beat9, beat10;
PFont font;

//You need to have the processing sound library installed for this project to work!
//Sound credit: https://freesound.org/people/menegass/sounds/99754/

void setup(){
  size(800, 600, P2D);
  time = 151;
  ellipseMode(CENTER);
  rectMode(CENTER);
  tap = new SoundFile(this, "bongo.wav");
  font = createFont("Arial", 30);
  textFont(font);
  textAlign(CENTER);
}

void draw(){
  background(225);
  time = time + 2;
  if(time > 650){
    time = 151;
  }
  stroke(0);
  fill(255);
  
  if(beat1) fill(255, 77, 77);
  else fill(255);
  rect(150, 125, 100, 100);
  if(beat2) fill(255, 163, 77);
  else fill(255);
  rect(275, 125, 100, 100);
  if(beat3) fill(255, 255, 106);
  else fill(255);
  rect(400, 125, 100, 100);
  if(beat4) fill(185, 255, 106);
  else fill(255);
  rect(525, 125, 100, 100);
  if(beat5) fill(77, 255, 111);
  else fill(255);
  rect(650, 125, 100, 100);
  if(beat6) fill(77, 248, 255);
  else fill(255);
  rect(150, 250, 100, 100);
  if(beat7) fill(93, 148, 255);
  else fill(255);
  rect(275, 250, 100, 100);
  if(beat8) fill(124, 77, 255);
  else fill(255);
  rect(400, 250, 100, 100);
  if(beat9) fill(221, 54, 255);
  else fill(255);
  rect(525, 250, 100, 100);
  if(beat10) fill(253, 175, 255);
  else fill(255);
  rect(650, 250, 100, 100);
  
  fill(0);
  text("1", 150, 138);
  text("2", 275, 138);
  text("3", 400, 138);
  text("4", 525, 138);
  text("5", 650, 138);
  text("6", 150, 263);
  text("7", 275, 263);
  text("8", 400, 263);
  text("9", 525, 263);
  text("10", 650, 263);
  
  text("Polyrhythm Generator", 400, 50);
  text("Click on a number to toggle its beat.", 400, 340);
  
  fill(255);
  rect(400, 470, 540, 220);
  
  line(150, 380, 650, 380);
  line(150, 400, 650, 400);
  line(150, 420, 650, 420);
  line(150, 440, 650, 440);
  line(150, 460, 650, 460);
  line(150, 480, 650, 480);
  line(150, 500, 650, 500);
  line(150, 520, 650, 520);
  line(150, 540, 650, 540);
  line(150, 560, 650, 560);
  
  beatData();
  
  line(time, 360, time, 580);
  fill(0);
  ellipse(time, 360, 10, 10);
  ellipse(time, 580, 10, 10);
}
