import themidibus.*;

MidiBus myBus;
int channel = 0;
int pitch, velocity;
ArrayList<Dot> dots;
int size = 0;
boolean pressed = false;
int rectWidth;
PFont font;

void setup() {
  size(640, 480, P2D);

  MidiBus.list();
  myBus = new MidiBus(this, -1, 1); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  dots = new ArrayList<Dot>();
  
  font = createFont("Arial", 15);
  textFont(font);
}

void draw() {
  background(0);
  text("Press and hold the mouse for bigger dots and louder notes.", 10, 20);
  
  for (int i=dots.size()-1; i>=0; i--) {
    Dot dot = dots.get(i);
    if (dot.alive) {
      dot.run();
    } else {
      dots.remove(i);
    }
  }
  
  rectWidth = int(map(size, 0, 127, 0, 600));
  if(pressed == true){
    if(size < 127){
      size++;
    }
    rect(20, 420, rectWidth, 40);
  }
  
}

void mousePressed() {
  myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
  pressed = true;
}

void mouseReleased() {
  pitch = int(map(mouseY, height, 0, 0, 127));
  myBus.sendNoteOn(channel, pitch, size); // Send a Midi noteOn
  
  dots.add(new Dot(mouseX, mouseY, size + 10));
  pressed = false;
  size = 0;
}
