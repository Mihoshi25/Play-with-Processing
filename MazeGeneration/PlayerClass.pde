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
  // Method for drawing the player
  void drawPlayer()
  {
    fill(255, 0, 0);
    ellipse(playerX, playerY, pladia, pladia);
  }
  // Attempt at wall collision
  /*
  boolean circleRectangleCollision(float playerX, float playerY, float plarad, float wX, float wY, float wWidth, float wHeight)
  {
    float deltaX = playerX - max(wX, min(playerX, wX + wWidth));
    float deltaY = playerY - max(wY, min(playerY, wY + wHeight));
    return (deltaX  * deltaX + deltaY * deltaY) < (plarad * plarad);
  }


  void hasCollidedWithWall()
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
        if (circleRectangleCollision(playerX, playerY, pladia/2, c.j, c.i, w, b))
        {
          speed = 0;
          collision.play();
          println(playerX);
        }
      }
      if (c.walls[1])
      {
        if (circleRectangleCollision(playerX, playerY, pladia/2, c.i, c.j, b, w))
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[2])
      {
        if (circleRectangleCollision(playerX, playerY, pladia/2, c.j, c.i, -w, -b))
        {
          speed = 0;
          collision.play();
        }
      }
      if (c.walls[3])
      {
        if (circleRectangleCollision(playerX, playerY, pladia/2, c.i, c.j, -b, -w))
        {
          speed = 0;
          collision.play();
        }
      }
    }
  }*/
}
