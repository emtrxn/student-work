int shipWidth, shipBorderRadius = 5;
int shipHeight;
int domeSize;
int pomPomSize;
int shipPosX;
int shipPosY;

final float MIN_SIZE = 20.0/100;
final float MAX_SIZE = 150.0/100;

float sizeMultiplier;

void setup ()
{
  size (500, 500);
}

void draw ()
{
  background (0);
  setSizeXandY();
  calcDimensions();
  drawSpaceship();
}

void setSizeXandY () 
//centre of ship = mouseX/Y  size = mouseY MIN_SIZE = top MAX_SIZE = bottom
{
  shipPosX = mouseX - (shipWidth/2);
  shipPosY = mouseY - (shipHeight/2);
   
  sizeMultiplier = (MAX_SIZE - MIN_SIZE) * (float (mouseY)/ float (height));
  println (sizeMultiplier, (MAX_SIZE - MIN_SIZE), (float (mouseY)/ float (height)));
}

void calcDimensions ()
{
  shipWidth = int (250 * sizeMultiplier);
  shipHeight = int ((shipWidth/4) * sizeMultiplier);
  domeSize = int ((shipWidth/3) * sizeMultiplier);
  pomPomSize = int ((domeSize/5) * sizeMultiplier);
  
  
}

void drawSpaceship ()
//all drawing code should be here
{
  //ship body
  fill (54, 123, 108);
  strokeWeight (0);
  rect (shipPosX, shipPosY, shipWidth, shipHeight, shipBorderRadius);
  
  //stripes
  strokeWeight (2);
  stroke (204, 180, 216);
  line (shipPosX, (shipPosY + (15 * sizeMultiplier)), (shipPosX + shipWidth), (shipPosY + (15 * sizeMultiplier))); //top line
  line (shipPosX, shipPosY + shipHeight - (15 * sizeMultiplier), (shipPosX + shipWidth), shipPosY + shipHeight - (15 * sizeMultiplier)); //bottom line

  // head/dome
  fill (255);
  strokeWeight (0);
  ellipse (shipPosX, shipPosY, domeSize, domeSize);
  
  //party hat
  fill (67, 246, 173);
  strokeWeight (0);
  triangle (shipPosX, (shipPosY - (domeSize*2)), (shipPosX + (domeSize/2)), (shipPosY - (domeSize/3)), (shipPosX - (domeSize/2)), (shipPosY - (domeSize/3)));

  //pom pom
  fill (180, 216, 201);
  strokeWeight (0);
  ellipse (shipPosX, (shipPosY - (domeSize*2)), pomPomSize, pomPomSize);
}
