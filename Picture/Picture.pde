PImage bird;

//size and position of bird
int birdHeight = 100;
int birdWidth = 100;
int birdX = 250;
int birdY = 200;

void setup(){
  size(500,750);
  background(#56adef);
  bird = loadImage("Bird1.png");
}

void draw(){
  //bird
  image(bird, birdX, birdY);
  bird.resize(birdHeight, birdWidth);
  //grass
  fill(#2bef4b);
  rect(0,500,750,750);
  //sun
  fill(#fffa00);
  ellipse(400,100,100,100);
  noStroke();
  //house
  fill(#5b1601);
  rect(50,430,150,150);  
  fill(#cc1404);
  triangle(40, 430, 210, 430, 130, 275);
  //bush
  fill(#2DB918);
  ellipse(340, 460, 200, 100);
  noStroke();
  fill(#3AF71E);
  ellipse(360, 460, 200, 100);
}
