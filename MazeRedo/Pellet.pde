class Pellet
{
  // Fields
  int pelletX;
  int pelletY;
  int peldia = 10;
  int pelrad = peldia/2;
  boolean collision = false;

  // Constructor
  Pellet(int pelletX, int pelletY)
  {
    this.pelletX = pelletX;
    this.pelletY = pelletY;
  }

  // Methods
  // Method for drawing the pellets
  void drawPellet()
  {
    fill(#FAFF00);
    ellipse(pelletX, pelletY, peldia, peldia);
  }
  // Method for checking if the pellet has been hit and adding a point and removing that pellet if it has
  void hitPellet()
  {
    if((dist(pelletX, pelletY, player.playerX, player.playerY) <= pelrad+player.plarad) && (collision == false))
    {
      score.play();
      points = points+1;
      collision = true;
    }
  }
}
