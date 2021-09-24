int startX = 0;
int startY = 300;
int endX = 0;
int endY = 0;

void setup(){
  size(600, 600);
  strokeWeight(5);
  background(0, 0, 0);
}

void draw(){
  int r = (int)(Math.random()*255);
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255);
  stroke(r, g, b, 200);
  while(startX < 600){
    endX = startX + (int)(Math.random()*20)+ 2;
    endY = startY + (int)(Math.random()*50)- 25;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = 0;
  startY = 300;
}
