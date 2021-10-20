PVector cellPos;
boolean split = false;

int aliveCells = 0;
int deadCells = 0;

ArrayList<Cell> cells;
PFont font;

void setup(){
  size(800, 600, P2D);
  ellipseMode(CENTER);
  cells = new ArrayList<Cell>();
  cells.add(new Cell(width/2, height/2));
  font = createFont("Arial", 30);
  textFont(font, 30);
}

void draw(){
  fill(255, 15);
  rect(0, 0, width, height);
  
  aliveCells = 0;
  deadCells = 0;
  for(Cell cell : cells){
    cell.run();
    if(cell.isAlive == true && split == false){
      double reproduce = Math.floor(random(0, 500));
      print(cell.position.x);
      if(reproduce == 7){
        split = true;
        cellPos = new PVector(cell.position.x, cell.position.y);
      }
    }
    if(cell.isAlive == true){
      aliveCells++;
    }
    if(cell.isAlive == false){
      deadCells++;
    }
  }
  
  if(split == true){
    cells.add(new Cell(cellPos.x, cellPos.y));
  }
  split = false;
  
  fill(0);
  text("Alive Cells: " + aliveCells, 15, 50);
  text("Dead Cells: " + deadCells, 15, 100);
}
