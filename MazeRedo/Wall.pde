// Setting up the class Wall
class Wall 
{
  // Fields
  int posX = width*1/6;
  int posY = height/2;
  int w = width*2/3;
  int h = 10;
  
  // Constructor
  Wall()
  {
    
  }
  
  // Methods
  void wallDraw()
  {
    fill(250);
   rect(posX, posY, w, h); 
  }
  
  void wallCollider()
  {
    
    if(dist(player.playerX, player.playerY, posX, w) <= player.pladia/2)
    {
      collision.play();
    }
    else if (dist(player.playerX, player.playerY, posX, h) <= player.pladia/2)
    {
      collision.play();
    }
    else if(dist(player.playerX, player.playerY, posX+h, w) <= player.pladia/2)
    {
      collision.play();
    }
    else if(dist(player.playerX, player.playerY, posX+w, h) <= player.pladia/2)
    {
      collision.play();
    }
    
  }
}
