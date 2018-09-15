//ball
int xPos = 500;
int yPos = 350;
int xDir = 5;
int yDir = 5;
int ballHeight = 80;
int ballWidth = 80;

void setup(){
  size(1000, 700);
  background(0);
}

void draw(){
  noStroke();
  background(0);
  ellipse(xPos, yPos, ballHeight, ballWidth);
  xPos = xPos + xDir;
  if (xPos > width - 40 || xPos < 40)
  {
    xDir = -xDir;
  }
  yPos = yPos + yDir;
  if (yPos > height-40 || yPos<40)
  {
    yDir = -yDir;
  }
 }
  
void mousePressed(){
  if (dist(xPos, yPos, mouseX, mouseY) <= 40)
  {
    xDir = -yDir;
    yDir = -xDir;
  }
  if (mouseX > 400)
  {
    background(0, 255, 0);
  }
}
