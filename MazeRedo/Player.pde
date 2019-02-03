class Player
{
  // Fields
  int playerX = width/2;
  int playerY = height - offset;
  int speed = 5;
  int pladia = 20;
  int plarad = pladia/2;
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
    //rect(playerX-pladia/2, playerY-pladia/2, pladia, pladia);
  }
  // Wall collision
  void borderCollider()
  {
    if (playerX-plarad <= 0) 
    {
      playerX += bounce;
      collision.play();
    }
    if (playerX+plarad >= width) 
    {
      playerX -= bounce;
      collision.play();
    }

    if (playerY-plarad <= 0) 
    {
      playerY += bounce;
      collision.play();
    }
    if (playerY+pladia/2 >= height) 
    {
      playerY -= bounce;
      collision.play();
    }
  }
  void moveLeft()
  {
    playerX = player.playerX - player.speed;
    if (collidingWithWall())
    {
      playerX = wall.posX + wall.w + plarad + bounce;
      collision.play();
    }
  }

  void moveRight()
  {
    playerX = player.playerX + player.speed;
    if (collidingWithWall())
    {
      playerX = wall.posX - plarad - bounce;
      collision.play();
    }
  }

  void moveUp()
  {
    playerY -= player.speed;
    if (collidingWithWall())
    {
      playerY = wall.posY + wall.h + plarad + bounce;
      collision.play();
    }
  }

  void moveDown()
  {
    playerY += player.speed;
    if (collidingWithWall())
    {
      playerY = wall.posY - plarad - bounce;
      collision.play();
    }
  }

  boolean collidingWithWall()
  {
    return 
      wall.posX + wall.w >= playerX - plarad &&
      wall.posX          <= playerX + plarad &&
      wall.posY + wall.h >= playerY - plarad &&
      wall.posY          <= playerY + plarad;
  }
}
