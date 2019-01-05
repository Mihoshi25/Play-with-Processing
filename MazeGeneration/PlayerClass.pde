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
  /*
  boolean circleRectangleCollision(float cX,float cY, float cR, float rX,float rY,float rW,float rH)
   {
   float deltaX = cX - max(rX, min(cX, rX + rW));
   float deltaY = cY - max(rY, min(cY, rY + rH));
   return (deltaX  * deltaX + deltaY * deltaY) < (cR * cR);
   }
   */

  void hasCollidedWithWall(int playerX, int playerY)
  {

    for (int i = 0; i<grid.size(); i++)
    {
      Cell c = grid.get(i);
      // Check if c has collided with walls
      // c.i
      // c.j
      // c.w 
      if (circleRectangleCollision(float playerX, float layerY, float pladia/2, float c.j, float c.i, float c.j+w, float c.i+1))
      {
        {
          float deltaX = playerX - max(c.j, min(playerX, c.j + c.j+w));
          float deltaY = playerY - max(c.i, min(playerY, c.i + 1));
          return (deltaX  * deltaX + deltaY * deltaY) < (pladia/2 * pladia/2);
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
