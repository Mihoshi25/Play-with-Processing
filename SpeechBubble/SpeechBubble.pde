void setup(){
  size(1500,1000);
  drawSpeechBubble(700,500);
}

void drawSpeechBubble(float x, float y){
  drawSpeechBubbleBase(x,y);
}

void drawSpeechBubbleBase(float x, float y){
  strokeWeight(10);
  ellipse(x,y, 500, 250);
  noFill();
  PShape s = createShape();
  s.beginShape();
  s.bezierDetail(2);
  s.vertex(805, 615);
  s.bezierVertex(830, 630, 845, 635, 870, 640);
  s.bezierVertex( 870, 640, 850, 650, 750, 625);
  s.endShape(CLOSE);
  shape(s);
  //bezier(805, 615, 830, 640, 845, 640, 870, 640);
  //bezier(750, 625, 810, 670, 845, 650, 870, 640);
}
