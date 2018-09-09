void setup(){
  size (1480,1120);
  background(#c83296);
}

void draw(){
  if (mousePressed){
    if (mouseButton == LEFT) {
      fill (#c864ff);
    }
    if (mouseButton == RIGHT) {
      fill (#f93185);
    }
    
  }
  else {
    fill (#ff003f);
  }
  ellipse (mouseX,mouseY, 100, 100);
}
