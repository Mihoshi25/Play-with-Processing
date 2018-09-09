PImage bird;

float playerHeight;
float playerWidth;
float playerX;
float playerY;

void setup(){
  size(500,750);
  background(#56adef);
  bird = loadImage("Bird1.png");
  
  playerX = 100;
  playerY = 100;
  playerHeight = 10;
  playerWidth = 10;
}

void draw(){
  //bird
  image(bird, playerX, playerY);
  resize(playerHeight, playerWidth);
  //grass
  fill(#2bef4b);
  rect(0,500,750,750);
  //sun
  fill(#fffa00);
  ellipse(400,100,100,100);

  //house
  fill(#5b1601);
  rect(50,430,150,150);
  
  fill(#cc1404);
  triangle(40, 430, 210, 430, 130, 275);
}
