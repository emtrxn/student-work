/*
* COMP 1010 SECTION A01
* INSTRUCTOR: Daniel Rea
* NAME: Melody Tran
* ASSIGNMENT: Assignment 1
* QUESTION: Question 2

* PURPOSE: To display the ship growing/shrinking in size depending on its location on the y-axis.
*/

int shipWidth; 
int shipBorderRadius = 5; //initially 5.
int shipHeight; 
int domeSize; 
int pomPomSize;
int shipPosX;
int shipPosY;
//the section above is in pixels.

final int CANVAS_WIDTH = 500; //must be in correlation w/width of canvas as "width" was not working.
final int CANVAS_HEIGHT = 500; //must be in correlation w/height of canvas as "height" was not working.

final float MIN_SIZE = 20.0/100;
final float MAX_SIZE = 150.0/100; 

float sizeMultiplier; //in percentage.

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

/* setSizeXandY
* This function displays how the center of the ship stays at the cursor and determines the size of the ship as it moves up and down the y-axis.
* Uses shipWidth/Height and MIN/MAX_SIZE.
* This produces a globals set used in the drawSpaceship () function.
* Sets values for ship position and size.
*/

void setSizeXandY () 
{
  shipPosX = mouseX - (shipWidth/2);
  shipPosY = mouseY - (shipHeight/2);
   
  sizeMultiplier = (MAX_SIZE - MIN_SIZE) * (float (mouseY)/ float (height));
  println (sizeMultiplier, (MAX_SIZE - MIN_SIZE), (float (mouseY)/ float (height)));
}

/* calcDimensions
* This function holds all the calculations used to draw the spaceship.
* From the global variables: shipWidth/Height, domeSize, pomPomSize. As well as the float sizeMultiplier.
* It produces shortcut variables to be used in the drawings, this way the code is a bit cleaner and easier to read.
* The calculations are to be within proper ratio of each other and are displayed that way.
*/

void calcDimensions ()
{
  shipWidth = int (250 * sizeMultiplier);
  shipHeight = int ((shipWidth/4) * sizeMultiplier);
  domeSize = int ((shipWidth/3) * sizeMultiplier);
  pomPomSize = int ((domeSize/5) * sizeMultiplier);
  
  
}

/* drawSpaceship
* This function puts all the shapes of the spaceship together. Ready to be called in the draw function.
* It gets its info from the calcDimensions block with a bit of arithmetic included.
* It produces our final image of the spaceship.
* A lot of the decisions to be made was for the positioning to keep the shapes aligned/proportionate with each other despite any changes to the placement on the y-axis.
*/

void drawSpaceship ()
{
  final float STRIPE_OFFSET = (24.0/100) * shipHeight;
  
  //ship body
  fill (54, 123, 108);
  strokeWeight (0);
  rect (shipPosX, shipPosY, shipWidth, shipHeight, shipBorderRadius);
  
  //stripes
  strokeWeight (2);
  stroke (204, 180, 216);
  line (shipPosX, (shipPosY + (STRIPE_OFFSET * sizeMultiplier)), (shipPosX + shipWidth), (shipPosY + (STRIPE_OFFSET * sizeMultiplier))); //top line
  line (shipPosX, shipPosY + shipHeight - (STRIPE_OFFSET * sizeMultiplier), (shipPosX + shipWidth), shipPosY + shipHeight - (STRIPE_OFFSET * sizeMultiplier)); //bottom line

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
