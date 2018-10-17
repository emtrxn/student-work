float theta; //radians
float radius = 50; //pixels
float angleChangeRate= 0.1; //radians
final int BALL_SIZE = 10;
void setup()
{
  size(500, 500);
}
void draw()
{
  background(0);
  float x =cos(theta)*radius;
  float y =sin(theta)*radius;
  ellipse(mouseX+ x, mouseY+ y, BALL_SIZE, BALL_SIZE);
  angleChangeRate= mouseY/(height-1.0) * 0.5; //how smooth the descending is
  theta = theta + angleChangeRate;
}
