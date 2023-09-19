
PImage img;
//img = createImage("cloud.png");
void setup()
{
  size(400,400);
  strokeWeight(5);
  imageMode(CENTER);
  img = loadImage("cloud.png");
  frameRate(15);
  
}
void draw()
{
  background(0);
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  int startY = mouseX;
  int startX = mouseY;
  int endX = (int)(Math.random() *400);
  int endY = (int)(Math.random() *400);
  while (endX <= 400){
    endX = startX + ((int)(Math.random() * 10));
    endY = startY + ((int)(Math.random() * 19) - 9);
    line(startY, startX, endY, endX);
    startX = endX;
    startY = endY;
  }
  image(img, mouseX, mouseY, 100, 100);
  //delay(1000);
}
void mousePressed()
{
  background(255);
  //int startX = 0;
  //int startY = 150;
  //int endX = 0;
  //int endY = 150;
}

void mouseReleased(){
  background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
}
