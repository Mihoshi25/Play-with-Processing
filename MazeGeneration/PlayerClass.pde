class PlayerClass
{
  // Fields
  int playerX = width/2-15;
  int playerY = height-15;
  int speed = 5;
  int pladia = 20;
  int b = 1;

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

  boolean circleRectangleCollision(float playerX, float playerY, float pladia/2, float c.j, float c.i, float c.j+w, float c.i+w)
  {
    float deltaX = playerX - max(playerX, min(c.j, c.j + w));
    float deltaY = playerY - max(playerY, min(c.i, c.i + 1));
    return (deltaX  * deltaX + deltaY * deltaY) < (pladia/2 * pladia/1);
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
        if (circleRectangleCollision(playerX, playerY, pladia/2, c.j, c.i, c.j+w, c.i+b))
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[1])
      {
        if ((dist(playerX+11, playerY+11, c.j, c.j+w)) <= pladia)
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[2])
      {
        if ((dist(playerX+11, playerY+11, c.i, c.i+w)) <= pladia)
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[3])
      {
        if ((dist(playerX-11, playerY-11, c.j, c.j+w)) <= pladia)
        {
          speed = 0;
          collision.play();
        }
      }
    }
  }
}
