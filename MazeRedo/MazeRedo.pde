// Importing sound library
import processing.sound.*;
Player player;
Wall wall;
// Declaring and initializing variables
int cols, rows;
int w = 30;
int points = 0;
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
  pellets[0] = new Pellet(15, 15);
  pellets[1] = new Pellet(15, height-15);
  pellets[2] = new Pellet(width-15, height-15);
  pellets[3] = new Pellet(width-15, 15);

  // Adding soundfiles
  collision = new SoundFile(this, "Impact.wav");
  win = new SoundFile(this, "Win.wav");
  score = new SoundFile(this, "Score.wav");
}

// Draw block
void draw() 
{
  background(51);
  // Calling method(s) in the PlayerClass
  player.drawPlayer();
  //player.hasCollidedWithWall();
  
  // Calling method(s) in Wall
  wall.wallDraw();
  player.wallCollider();
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
}

// Move controls
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
