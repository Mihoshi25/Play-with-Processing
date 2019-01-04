class PlayerClass
{
  // Fields
  int playerX = width/2-15;
  int playerY = height-15;
  int speed = 5;
  int pladia = 20;

  // Constructor
  PlayerClass()
  {
  }
  // Methods
  void drawPlayer()
  {
    fill(255, 0, 0);
    ellipse(playerX, playerY, pladia, pladia);
  }
  void hasCollidedWithWall(int playerX, int playerY)
  {
    for (int i = 0; i<grid.size(); i++)
    {
      Cell c = grid.get(i);
      // Check if c has collided with walls
      // c.i
      // c.j
      // c.w 
      if (c.walls[0])
      {
        if ((dist(playerX-11,playerY-11, c.i, c.i)) <= pladia)
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[1])
      {
        if ((dist(playerX-11,playerY-11, c.i+w, c.i+w)) <= pladia)
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[2])
      {
        if ((dist(playerX-11,playerY-11, c.i+w, c.i)) <= pladia)
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[3])
      {
        if ((dist(playerX-11,playerY-11, c.i, c.i+w)) <= pladia)
        {
          speed = 0;
          collision.play();
        }
      }
    }
  }
}
