//-------------SOME CODE BELOW IS A VARIATION AND BUILT OFF OF THE 
//-------------ORIGINAL PIXELEXAMPLE CODE FROM THE EECS 1710 LECTURES.

PImage img, newImg, newerImg, newestImg;
ArrayList<Dot> dots;
PVector[] locationsHue;
PVector[] locationsSaturation;
PVector[] locationsBrightness;
int pos;
int phase = 2;
int bigCounter = 0;
boolean yn;
PFont font;

void setup() {
  size(278, 298, P2D);  
  img = loadImage("kel.png");
  //CREDITS FOR KEL IMAGE: Kel portrait from OMORI game, copyright OMOCAT
  
  newImg = img.get();
  newerImg = img.get();
  newestImg = img.get();
  
  font = createFont("Arial", 10);
  textFont(font, 10);
  
  dots = new ArrayList<Dot>();
  locationsHue = new PVector[newImg.pixels.length];
  locationsSaturation = new PVector[newerImg.pixels.length];
  locationsBrightness = new PVector[newestImg.pixels.length];
  pos = 0;
  
  //get x/y coords for img
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      int loc = x + (y * img.width);
      
      locationsHue[loc] = new PVector(x, y);
      locationsSaturation[loc] = new PVector(x, y);
      locationsBrightness[loc] = new PVector(x, y);
    }
  }
  
  //sort by hue in newImg
  for(int i = 0; i < newImg.pixels.length; i++){ //run through algorithm for all pixels
    int currentPixel = i;
    float highestHue = -1; //lowest pixel hue can only be 0
    for(int j = i; j < newImg.pixels.length; j++){
      float currentHue = hue(newImg.pixels[j]);
      if(currentHue > highestHue){
        currentPixel = j; //set current highest hue pixel to j
        highestHue = currentHue;
      }
    }
    color tempI = newImg.pixels[currentPixel];
    newImg.pixels[currentPixel] = newImg.pixels[i];
    newImg.pixels[i] = tempI;
    
    PVector tempV = locationsHue[currentPixel];
    locationsHue[currentPixel] = locationsHue[i];
    locationsHue[i] = tempV;
  }
  
  //sort by Saturation in newerImg
  for(int i = 0; i < newerImg.pixels.length; i++){ //run through algorithm for all pixels
    int currentPixel = i;
    float highestSat = -1; //lowest pixel saturation can only be 0
    for(int j = i; j < newerImg.pixels.length; j++){
      float currentSat = saturation(newerImg.pixels[j]);
      if(currentSat > highestSat){
        currentPixel = j; //set current highest saturation pixel to j
        highestSat = currentSat;
      }
    }
    color tempI = newerImg.pixels[currentPixel];
    newerImg.pixels[currentPixel] = newerImg.pixels[i];
    newerImg.pixels[i] = tempI;
    
    PVector tempV = locationsSaturation[currentPixel];
    locationsSaturation[currentPixel] = locationsSaturation[i];
    locationsSaturation[i] = tempV;
  }
  
  //sort by Brightness in newestImg
  for(int i = 0; i < newestImg.pixels.length; i++){ //run through algorithm for all pixels
    int currentPixel = i;
    float highestBright = -1; //lowest pixel brightness can only be 0
    for(int j = i; j < newestImg.pixels.length; j++){
      float currentBright = brightness(newestImg.pixels[j]);
      if(currentBright > highestBright){
        currentPixel = j; //set current highest brightness pixel to j
        highestBright = currentBright;
      }
    }
    color tempI = newestImg.pixels[currentPixel];
    newestImg.pixels[currentPixel] = newestImg.pixels[i];
    newestImg.pixels[i] = tempI;
    
    PVector tempV = locationsBrightness[currentPixel];
    locationsBrightness[currentPixel] = locationsBrightness[i];
    locationsBrightness[i] = tempV;
  }
  
  //create dots for img
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      int loc = x + (y * img.width);
      
      dots.add(new Dot(x, y, locationsHue[loc], locationsSaturation[loc], locationsBrightness[loc], img.pixels[loc]));
    }
  }

}

void draw() { 
  background(127);

  for(Dot dot : dots){
    dot.run();
  }
  
  text("Original", 22, 15);
  text("Sorted by hue", 150, 15);
  text("Sorted by saturation", 150, 143);
  text("Sorted by brightness", 22, 143);
  text("Run your mouse through each image to sort the dots.", 16, 271);
  text("Take a look at how the next picture fills up as you", 16, 281);
  text("disrupt each dot. This shows how the dots are sorted.", 16, 291);
  
}
