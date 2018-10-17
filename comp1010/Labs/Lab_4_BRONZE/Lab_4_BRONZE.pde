int bgColor = 200;
int pandaHeadSize = 50;
float earSizeRatio = 60.0/100; 

void setup ()
{
  size (500,500);
  background (bgColor);
}

void draw ()
{
  background (bgColor);
  pandaEars();
  pandaHead();
}

void pandaHead()
{
  fill (255);
  ellipse (mouseX, mouseY, pandaHeadSize, pandaHeadSize);
}

void pandaEars()
{
  final float THETA = QUARTER_PI;
  final float PANDA_EAR_SIZE = earSizeRatio * pandaHeadSize;
  float distance = (45.0/100) * pandaHeadSize;
  float earOffsetX = cos (THETA) * distance;
  float earOffsetY = sin (THETA) * distance;
  
  fill(0);
  println("X:" + earOffsetX);
  println("Y:" + earOffsetY);
  println("Ear size:" + PANDA_EAR_SIZE);
  ellipse ((mouseX + earOffsetX), (mouseY - earOffsetY), PANDA_EAR_SIZE, PANDA_EAR_SIZE); //left ear
  ellipse ((mouseX - earOffsetX), (mouseY - earOffsetY), PANDA_EAR_SIZE, PANDA_EAR_SIZE); //right ear
  
}
