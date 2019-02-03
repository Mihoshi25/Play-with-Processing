class Player
{
  // Fields
  int offset = 15;
  int playerX = width/2;
  int playerY = height - offset;
  int speed = 5;
  int pladia = 20;
  int b = 1;

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
    if (playerX-pladia/2 < 0) 
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
      playerY += 15;
      collision.play();
    }
    if (playerY+pladia/2 > height) 
    {
      playerY -= 15;
      collision.play();
    }
    /*if (wall.posX + wall.w >= playerX - pladia/2 &&
      wall.posX <= playerX + pladia/2 &&
      wall.posY + wall.h >= playerY - pladia/2 &&
      wall.posY <= playerY + pladia/2)         
    {       
      collision.play();
    }*/
    
     if (wall.posX + wall.w >= playerX - pladia/2)
    {       
      collision.play();
      //playerX -= 15;
    }
    if (wall.posX <= playerX + pladia/2)
    {       
      collision.play();
      //playerX -= 15;
    }
    if (wall.posY + wall.h >= playerY - pladia/2)
    {       
      collision.play();
      //playerX -= 15;
    }
    if (wall.posY <= playerY + pladia/2)
    {       
      collision.play();
      //playerX -= 15;
    }
  }
}
