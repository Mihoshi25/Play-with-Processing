// Importing sound library
import processing.sound.*;
Player player;
Wall wall;
// Declaring and initializing variables
int cols, rows;
int w = 30;
int points = 0;
int offset = 15;
// Soundfiles
SoundFile collision;
SoundFile win;
SoundFile score;

// Declaring array
Pellet[] pellets;

// Setup block
void setup() 
{
  size(1500, 900);
  // Initializing Player
  player = new Player();
  // Initializing Wall
  wall = new Wall();
  // Instantiating Pellet as an array of four elements with four set positions
  pellets = new Pellet[4];
  pellets[0] = new Pellet(offset, offset);
  pellets[1] = new Pellet(offset, height-offset);
  pellets[2] = new Pellet(width-offset, height-offset);
  pellets[3] = new Pellet(width-offset, offset);

  // Adding soundfiles
  collision = new SoundFile(this, "Impact.wav");
  win = new SoundFile(this, "Win.wav");
  score = new SoundFile(this, "Score.wav");
}

// Draw block
void draw() 
{
  background(50);
  // Calling method(s) in the PlayerClass
  player.drawPlayer();

  // Calling method(s) in Wall
  wall.wallDraw();
  player.borderCollider();
  // Adding pellets by calling pellet methods
  for (int i = 0; i < pellets.length; i++)
  {
    Pellet pellet = pellets[i];
    if (pellet.collision == false)
    {
      pellet.drawPellet();
      pellet.hitPellet();
    }
  }
  textSize(25);
  fill(250);
  text("score = " + points, 25, 25);
  checkState();
}

// Move controls
void keyPressed()
{
  switch(key)
  {
  case 'w':
    player.moveUp();
    break;
  case 'a':
    player.moveLeft();
    break;
  case 's':
    player.moveDown();
    break;
  case 'd':
    player.moveRight();
    break;
  }
}
// Checks if there are any pellets left. If there are none, the program plays Win and reruns Setup
void checkState()
{
  for (int i = 0; i < pellets.length; i++)
  {
    if (pellets[i].collision == false)
    {
      return;
    }
  }
  win.play();
  setup();
}
