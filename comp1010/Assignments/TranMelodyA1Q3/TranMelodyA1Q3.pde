/**********************************************************************************************************************************************************
COMP 1010 SECTION A01
INSTRUCTOR: Daniel Rea
NAME: Melody Tran
ASSIGNMENT: Assignment 1
QUESTION: Question 3

PURPOSE: To make the spaceship move from one end of the canvas to the other automatically, and for it to grow so it seems like it's coming towards thge viewer.
**********************************************************************************************************************************************************/
int shipWidth = 250; //initially 250.
int shipBorderRadius = 5; //initially 5.
int shipHeight = shipWidth/4; //to calculate the height of the ship and stay proportionate with the width of the ship.
int domeSize;
int pomPomSize; 
//the section above is in pixels.

final int CANVAS_WIDTH = 500; //to be changed in correlation with the width of the canvas as "width" was not working.
final int CANVAS_HEIGHT = 500; //to be changed in correlation with the height of the canvas as "height" was not working.

final float SIZE_START = 5.0/100; //in percentage, initially 5%.
final float SIZE_END = 150.0/100; //in percentage, initially 150%.
final float X_START = CANVAS_WIDTH + (shipWidth*SIZE_START); //to calculate the starting point on the x-axis for the ship. Starts off screen for a better effect.
final float Y_START = CANVAS_HEIGHT + (shipHeight*SIZE_START); //to calculate the starting point on the y-axis for the ship. Starts off screen for a better effect.
final int X_END = 0 - int (shipWidth*SIZE_END); //to calculate the end point on the x-axis. Ends off screen.
final int Y_END = 0 - int (shipHeight*SIZE_END); //to calculate the end point on the y-axis. Ends off screen.

final float SPEED_FACTOR = 200.0/100; //in percentage, initially 200%.

float shipPosX = X_START;
float shipPosY = Y_START;
float sizeMultiplier = SIZE_START;

void setup ()
{
  size (500, 500);
}

void draw()
{
  background (0);
  setSizeXandY();
  calcDimensions();
  drawSpaceship();
}

void mouseClicked()
{
    shipPosX = X_START;
    shipPosY = Y_START;
    sizeMultiplier = SIZE_START;
}

/* setSizeXandY
* This function controls the speed that the spaceship flies, where it starts/ends on the canvas, and the increase in size as it moves.
* I used global variables in this function but also included a bit of arithmetics to keep the spaceship proper.
* It produces a sort of graphics that animates the spaceships on the canvas.
* Max and min were used with global variables and constants.
*/

void setSizeXandY ()
{
  shipPosX = max(X_END, shipPosX - (1.0/SPEED_FACTOR)); //to incorporate the X_END but still result in the starting point being at the bottom right.
  shipPosY = max(Y_END, shipPosY - (1.0/SPEED_FACTOR)); //to incorporate the Y_END but still result in the starting point being at the bottom right.
  
  sizeMultiplier = min(SIZE_END, sizeMultiplier + (1.0/SPEED_FACTOR)/400); 
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
  final float STRIPE_OFFSET = 0.24f * shipHeight;
  
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
