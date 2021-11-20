import processing.video.*;

Movie movie;
PImage videoImg;


void setup() {
  size(640, 480, FX2D);
  
  //setupCapture(0);
  //setupMovie("cat.mp4");  
  
  movie = new Movie(this, "cat.mp4");
  movie.loop();
  movie.volume(0);
}

void draw() {  
  scale(2);
  background(0);
  
  if (videoImg != null) {
    if (openCV == null) {
      setupOpenCV(videoImg);
    } else {
      updateOpenCV(videoImg);
      image(videoImg, 0, 0);
    }
  }
  
  if (ps != null) {
    shape(ps);
  }
  surface.setTitle("" + frameRate);
}

void movieEvent(Movie m) {
  m.read();
  videoImg = m;
  armOpenCvUpdate = true;
}
