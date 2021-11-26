PShader shader;

void setup() {
  size(800, 600, P2D);
  shader = loadShader("example.glsl");
  shader.set("resolution", float(width), float(height));
  shader.set("depth", 1.0);
  shader.set("rate", 1.0);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  background(0);
  
  stroke(0, 255, 0);
  fill(0, 255, 127);
  rect(width/2, height/2, 400, 400);
  fill(0, 255, 0);
  ellipse(width/2 - 200, height/2, 200, 200);
  ellipse(width/2 + 200, height/2, 200, 200);
  ellipse(width/2, height/2 - 200, 200, 200);
  ellipse(width/2, height/2 + 200, 200, 200);

  shader.set("time", float(millis())/1000.0);
  filter(shader);
}
