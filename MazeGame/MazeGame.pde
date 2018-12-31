PlayerClass player;
int row;
int collumn;
int w = 30;
int[] grid = new int[];


void setup()
{
  size(1500, 900); 
  player = new PlayerClass();
  collumn = floor(width/w);
  row = floor(height/w);
  for(int r = 0; r < row; r++)
  {
    for(int c = 0; c < collumn; c++)
    {
      
    }
  }
}

void draw()
{
  background(0);
  player.drawPlayer();
}

void keyPressed()
{
  switch(key)
  {
  case 'w':
    player.posY = player.posY - player.speed;
    break;
  case 'a':
    player.posX = player.posX - player.speed;
    break;
  case 's':
    player.posY = player.posY + player.speed;
    break;
  case 'd':
    player.posX = player.posX + player.speed;
    break;
  }
}
