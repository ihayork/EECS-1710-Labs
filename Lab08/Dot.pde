class Dot {

  PVector position;
  float size;
  int birthtime = 0;
  int lifetime = 3000;
  boolean alive = true;
  float delta;
  float fling;
  float offset;
  
  Dot(int _x, int _y, int _size) {
    position = new PVector(_x, _y);
    size = _size;
    delta = size / 200.0;    
    birthtime = millis();
    offset = random(-2, 2);
  }
  
  void update() {
    
    if (alive) {
      fling += delta;
      position.y += fling;
      position.x += offset;
      if (millis() > birthtime + lifetime) alive = false;
    }
  }
  
  void draw() {
    noStroke();
    fill(255);
    ellipse(position.x, position.y, size, size);
  }
  
  void run() {
    update();
    draw();
  }
  
}
