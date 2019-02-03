class Player
{
  // Fields
  int offset = 15;
  int playerX = width/2;
  int playerY = height - offset;
  int speed = 5;
  int pladia = 20;
  int b = 1;
  int bounce = 15;

  // Constructor
  Player()
  {
  }
  // Methods
  // Method for drawing the player
  void drawPlayer()
  {
    fill(255, 0, 0);
    ellipse(playerX, playerY, pladia, pladia);
    noFill();
    rect(playerX-pladia/2, playerY-pladia/2, pladia, pladia);
  }
  // Attempt at wall collision
  void wallCollider()
  {
    if (wall.posX + wall.w >= playerX - pladia/2 &&
      wall.posX <= playerX + pladia/2 &&
      wall.posY + wall.h >= playerY - pladia/2 &&
      wall.posY <= playerY + pladia/2)         
    {       
      int rectCenterX = wall.posX + wall.w / 2;
      int rectCenterY = wall.posY + wall.h / 2;
      
      // Get the diffs from the center of the player to the center of the wall
      int diffX = playerX - rectCenterX;
      int diffY = playerY - rectCenterY;

      // We're deeper in X, so move on Y
      if (abs(diffX) < abs(diffY))
      {
        // Make it so that if we're above the center of the wall, move us up.
        int negator = diffY > 0 ? 1 : -1; 
        playerY = (rectCenterY + wall.h/2  * negator + (pladia/2) * negator);
      }
      // We're deeper in Y, so move on X
      else
      {
        // Make it so that if we're left of the center, move us left.
        int negator = diffX > 0 ? 1 : -1; 
        playerX = (rectCenterX + wall.w/2  * negator + (pladia/2) * negator);
      }
    }


    /*if (rectCenterX < playerX && diffX > diffY)
    {
      // Player is to the right of the middle, so move him right
      collision.play();
      playerX += bounce;
    } else if (rectCenterX > playerX && diffX > diffY)
    {
      // Player is to the left of the middle, so move him left
      collision.play();
      playerX -= bounce;
    } else if (rectCenterY < playerY && diffX < diffY)
    {
      // Player is to the below of the middle, so move him down
      collision.play();
      playerY += bounce;
    } else if (rectCenterY > playerY && diffX < diffY)
    {
      // Player is to the above of the middle, so move him up
      collision.play();
      playerY -= bounce;
    }*/
  }
}
