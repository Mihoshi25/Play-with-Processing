// Variables
import processing.sound.*;
PlayerClass player;
int cols, rows;
int w = 30;
int points = 0;
Cell current;
SoundFile collision;
SoundFile win;
SoundFile score;

// Setting up arraylists
ArrayList<Cell> grid;
ArrayList<Cell> stack;

// Setting up array
PelletClass[] pellets;

// Setup block
void setup() 
{
  size(1500, 900);
  player = new PlayerClass();
  pellets = new PelletClass[4];
  pellets[0] = new PelletClass(15, 15);
  pellets[1] = new PelletClass(15, height-15);
  pellets[2] = new PelletClass(width-15, height-15);
  pellets[3] = new PelletClass(width-15, 15);
  grid = new ArrayList<Cell>();
  stack = new ArrayList<Cell>();
  
  // Setting the amount of rows and columns in the grid based on w
  cols = floor(width/w);
  rows = floor(height/w);
  // Giving the top right coordinate for each cell
  for (int j = 0; j < rows; j++) 
  {
    for (int i = 0; i < cols; i++) 
    {
      Cell cell = new Cell(i, j);
      grid.add(cell);
    }
  }
  // Setting the cell we start in to be the first cell in the grid
  current = grid.get(0);
  // While the stack is not empty, keep moving to a new cell
  step();
  while (!stack.isEmpty()) 
  {
    step();
  }
  collision = new SoundFile(this, "Impact.wav");
  win = new SoundFile(this, "Win.wav");
  win.play();
  score = new SoundFile(this, "Score.wav");
}

// Draw block
void draw() 
{
  background(51);

  player.drawPlayer();
  player.hasCollidedWithWall(5, 5);

  for (int i = 0; i < pellets.length; i++)
  {
    PelletClass pellet = pellets[i];
    if (pellet.collision == false)
    {
      pellet.drawPellet();
      pellet.hitPellet();
    }
  }

  // Draw the grid
  for (int i = 0; i < grid.size(); i++) 
  {
    grid.get(i).show();
  }
  fill(0, 0, 150);
  textSize(50);
  text("score = " + points, 5, 40);
  checkState();
}

// Self-defined function
void step()
{
  // Set the current cell as having been visited 
  current.visited = true;

  // STEP 1
  // Check if neighbors of the current cell have been visited, and get random neighbor
  Cell next = current.checkNeighbors();
  if (next != null) 
  {
    next.visited = true;

    // STEP 2
    // Add the current cell to stack of visited cells which we might return to
    stack.add(current);

    // STEP 3
    // Remove the wall between the cell moved from and the cell moved to
    removeWalls(current, next);

    // STEP 4
    // Set next cell to be the current cell, as this is the cell we have moved to
    current = next;
  } 
  // If the size of the stack is above 0, remove the last entry from the stack and set it as current
  else if (stack.size() > 0) 
  {
    current = stack.remove(stack.size() - 1);
  }
}

int index(int i, int j) 
{
  if (i < 0 || j < 0 || i > cols-1 || j > rows-1) 
  {
    return 0;
  }
  return i + j * cols;
}


// Function which takes two parametres of type cell, which removes the walls between two adjecent cells
void removeWalls(Cell a, Cell b) 
{
  int x = a.i - b.i;
  if (x == 1) 
  {
    a.walls[3] = false;
    b.walls[1] = false;
  } else if (x == -1) 
  {
    a.walls[1] = false;
    b.walls[3] = false;
  }
  int y = a.j - b.j;
  if (y == 1) 
  {
    a.walls[0] = false;
    b.walls[2] = false;
  } else if (y == -1) 
  {
    a.walls[2] = false;
    b.walls[0] = false;
  }
}

void keyPressed()
{
  switch(key)
  {
  case 'w':
    player.playerY = player.playerY - player.speed;
    break;
  case 'a':
    player.playerX = player.playerX - player.speed;
    break;
  case 's':
    player.playerY = player.playerY + player.speed;
    break;
  case 'd':
    player.playerX = player.playerX + player.speed;
    break;
  }
}

void checkState()
{
  for (int i = 0; i < pellets.length; i++)
  {
    if(pellets[i].collision == false)
    {
      return;
    }   
  }
  setup();
}
