int linePosX= 0;
int linePosY= 0;
void setup()
{
size(500,500);
}
void draw()
{
  background(255);
  stroke(0);
  line(0, linePosY, width-1, linePosY); // horizontal
  line(linePosX, 0, linePosX, height-1); // vertical
  linePosX= linePosX+ 1;linePosY= linePosY+ 1;
  
  // somehow, make sure the line is never below the mouse
  linePosX= min(linePosX, mouseX);linePosY= min(linePosY, mouseY);
}
