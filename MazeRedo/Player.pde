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
    /*if (playerX-pladia/2 < 0) 
     {
     playerX += 15;
     collision.play();
     }
     if (playerX+pladia/2 > width) 
     {
     playerX -= 15;
     collision.play();
     }
     
     if (playerY-pladia/2 < 0) 
     {
     playerY += bounce;
     collision.play();
     }
     if (playerY+pladia/2 > height) 
     {
     playerY -= bounce;
     collision.play();
     }*/
    if (wall.posX + wall.w >= playerX - pladia/2 &&
      wall.posX <= playerX + pladia/2 &&
      wall.posY + wall.h >= playerY - pladia/2 &&
      wall.posY <= playerY + pladia/2)         
    {       
      float rectCenterX = wall.posX + wall.w / 2;
      float rectCenterY = wall.posY + wall.h / 2;
      if (rectCenterX < playerX)
      {
        // Player is to the right of the middle, so move him right
        collision.play();
        playerX += bounce;
      }
      if (rectCenterX < playerX)
      {
        // Player is to the left of the middle, so move him left
        collision.play();
        playerX -= bounce;
      }
      if (rectCenterY < playerX)
      {
        // Player is to the below of the middle, so move him down
        collision.play();
        playerY += bounce;
      }
      if (rectCenterY > playerY)
      {
        // Player is to the above of the middle, so move him up
        collision.play();
        playerY -= bounce;
      }
    }

    /*if (wall.posX + wall.w >= playerX - pladia/2)
     {       
     collision.play();
     //playerX -= bounce;
     }
     if (wall.posX <= playerX + pladia/2)
     {       
     collision.play();
     //playerX -= bounce;
     }
     if (wall.posY + wall.h >= playerY - pladia/2)
     {       
     collision.play();
     //playerX -= bounce;
     }
     if (wall.posY <= playerY + pladia/2)
     {       
     collision.play();
     //playerX -= bounce;
     }*/
  }
}
