final int X_LEFT = 100;  //The left end of the horizontal line.
final int X_RIGHT = 400; //The right end of the horizontal line.
final int Y = 100;       //The y position of the line and circle.
final int BALL_DIAM = 50;     //The diameter of the circle
final float BALL_SPEED = 2.5; //Its speed (pixels/second)

float circleCenterPosition = X_LEFT;

boolean movingToTheRight = true;
boolean mouseClick = false;

void setup()
{
  size(500,200); 
}

void draw()
{
  if (!mouseClick)
  {
    moveBall();
    drawAll();
  }
}

void mousePressed ()
{
  mouseClick = !mouseClick;
}

void mouseReleased()
{
  mouseClick = !mouseClick;
}

void moveBall ()
{
  if (circleCenterPosition <= X_LEFT)
  {
    movingToTheRight = true;
  }
  if (circleCenterPosition >= X_RIGHT)
  {
     movingToTheRight = false;
  }
  if (movingToTheRight)
  {
    circleCenterPosition += BALL_SPEED;
  }
  if (!movingToTheRight)
  {
    circleCenterPosition -= BALL_SPEED;
  }
}

void drawAll()
{
  background (130);
  line (X_LEFT, Y, X_RIGHT, Y);
  ellipse (circleCenterPosition, Y, BALL_DIAM, BALL_DIAM);
}
