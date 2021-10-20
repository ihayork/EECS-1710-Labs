int mana = 0;
int dragons = 0;
int manaTillDragon = 50;
int manaPerClick = 1;
int dragonCost = 50;
int currentDragonCost = 0;

int[] dragonCostList = {50, 150, 350, 700, 1200, 1950, 2950, 4450, 6950, 11950};

PFont font;
PFont font2;

void setup(){
  size(800, 600, P2D);
  ellipseMode(CENTER);
  rectMode(CENTER);
  font = createFont("Arial", 15);
  font2 = createFont("Arial", 30);
  textFont(font, 15);
  dragonCost = dragonCostList[0];
}

void draw(){
  if(mana >= dragonCost && dragons < 10){
    if(dragons < 9){
      currentDragonCost++;
      dragonCost = dragonCostList[currentDragonCost];
    }
    manaPerClick++;
    dragons++;
    
    //spawn dragon
  }
  
  manaTillDragon = dragonCost - mana;
  
  
  //---------------------------------------------
  background(175);
  
  stroke(255);
  fill(175);
  rect(300, height/2, 550, 550);
  rect(width - 112.5, 75, 175, 100);
  rect(width - 112.5, 200, 175, 100);
  rect(width - 112.5, 325, 175, 100);
  rect(width - 112.5, 450, 175, 100);
  
  fill(255);
  textFont(font, 15);
  text("Spawn new dragon in:", width - 192, 50);
  if(dragons < 10){
    textFont(font2, 30);
    text(manaTillDragon, width - 192, 100);
  } else{
    textFont(font, 15);
    text("All dragons spawned!", width - 192, 100);
  }
  
  textFont(font, 15);
  text("Current mana:", width - 192, 175);
  textFont(font2, 30);
  text(mana, width - 192, 225);
  
  textFont(font, 15);
  text("Current mana per click:", width - 192, 300);
  textFont(font2, 30);
  text(manaPerClick, width - 192, 350);
  
  textFont(font, 15);
  text("Number of dragons:", width - 192, 425);
  textFont(font2, 30);
  text(dragons, width - 192, 475);
}
