class PlayerClass
{
  // Fields
  int posX = 40;
  int posY = height-20;
  int speed = 5;

  // Constructor
  PlayerClass()
  {
  }
  // Methods
  void drawPlayer()
  {
    fill(255, 0, 0);
    ellipse(posX, posY, 20, 20);
  }

  void movePlayer()
  {
  }

  
}
