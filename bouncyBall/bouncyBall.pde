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
  if (xPos > width - ballWidth/2 || xPos < ballWidth/2)
  {
    xDir = -xDir;
  }
  yPos = yPos + yDir;
  if (yPos > height - ballHeight/2 || yPos < ballHeight/2)
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
