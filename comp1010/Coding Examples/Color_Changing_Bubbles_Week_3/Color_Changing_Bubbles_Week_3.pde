int bubbleOffsetX = 1;
int bubbleOffsetY = 1;
int bubbleSize = 50;

int r = 255;
int g = 255;
int b = 255;

void setup()
{
  size (500, 500);
  background (0);
  
}

void draw ()
{
  ellipse (mouseX + bubbleOffsetX, mouseY + bubbleOffsetY, bubbleSize, bubbleSize);
  
  //changing colour and position of bubble
  fill (r,g,b);
  bubbleOffsetX = (bubbleOffsetX +1) % 50;
  bubbleOffsetY = (bubbleOffsetY + 1) % 50;
  bubbleSize = (bubbleSize +1 ) % 50;
  
  //make the colours slowly change
  r = (r +1) % 255;
  g = (g +2) % 255;
  b =(b +3) % 255;
}
