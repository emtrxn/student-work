void setup ()
{
  frameRate (1);
  size (500, 500);
}

void draw ()
{
  for (int circles = 1; circles <= 1; circles++)
  {
  int xLocation = (int) random (0, width-80);
  int yLocation = (int) random (0, height+25);
  
  fill (255);
  ellipse (xLocation*circles, yLocation*circles, 5, 5);
  
  fill (0);
  textSize (16);
  text ("(" + str(xLocation*circles)+","+str(yLocation*circles)+")", xLocation*circles+5, yLocation*circles-5); //(x,y)
  println (xLocation*circles, yLocation*circles);
  }
}
