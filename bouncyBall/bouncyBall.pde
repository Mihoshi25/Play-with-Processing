//ball
int xPos = 500;
int yPos = 350;
int xDir;
int yDir;
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
  xPos=xPos+xDir;
  if (xPos>width-40 || xPos<40)
  {xDir=-xDir;
  }
}
