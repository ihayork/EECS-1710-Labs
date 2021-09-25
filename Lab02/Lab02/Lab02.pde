float x2, x3, x4;
float speed2 = -1;
float speed3 = -2;
float speed4 = -3;
PImage sky;
PImage clouds;
PImage mountains;
PImage skyline;

void setup() {
  size(800, 600);
  x2 = 0;
  x3 = 0;
  x4 = 0;
  sky = loadImage("sky.png");
  clouds = loadImage("clouds.png");
  mountains = loadImage("mountains.png");
  skyline = loadImage("skyline.png");
}

void draw() {
  x2 += speed2;
  x3 += speed3;
  x4 += speed4;
  
  if(x2 < -2400) {
    x2 = 0;
  }
  
  if(x3 < -2400) {
    x3 = 0;
  }
  
  if(x4 < -2400) {
    x4 = 0;
  }
  
  image(sky, 0, 0, sky.width, height);
  image(clouds, x2, 0, clouds.width, height);
  image(mountains, x3, 0, mountains.width, height);
  image(skyline, x4, 0, skyline.width, height);
  
  
  
  
}
