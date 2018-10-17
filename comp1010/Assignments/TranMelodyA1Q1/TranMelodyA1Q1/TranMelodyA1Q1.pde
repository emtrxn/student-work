/**********************************************************************************************************************************************************
COMP 1010 SECTION A01
INSTRUCTOR: Daniel Rea
NAME: Melody Tran
ASSIGNMENT: Assignment 1
QUESTION: Question 1

PURPOSE: To draw a simple spaceship (party ship) that stays within its correct ratios despite any changes in size, x-coordinates, and/or y-coordinates.
**********************************************************************************************************************************************************/
final int SIZE = 300; //width of ship, initially 300.
final int X_CENTRE = 100; 
final int Y_CENTRE = 250;

final int SHIP_RADIUS = 5;
final int BODY_HEIGHT = SIZE/4;
final int DOME_SIZE = SIZE/3;
final int PARTY_POM_POM = DOME_SIZE/5;
//the section above is in pixels. 

final float STRIPE_OFFSET = 0.24f * BODY_HEIGHT;

size (500, 500);
background (0);

//ship body
fill (54, 123, 108);
strokeWeight (0);
rect (X_CENTRE, Y_CENTRE, SIZE, BODY_HEIGHT, SHIP_RADIUS);

// stripe
strokeWeight (2);
stroke (204, 180, 216);
line (X_CENTRE, (Y_CENTRE + STRIPE_OFFSET), (X_CENTRE + SIZE), (Y_CENTRE + STRIPE_OFFSET)); //top line
line (X_CENTRE, Y_CENTRE + BODY_HEIGHT - STRIPE_OFFSET , (X_CENTRE + SIZE), Y_CENTRE + BODY_HEIGHT - STRIPE_OFFSET); //bottom line



// head/dome
fill (255);
strokeWeight (0);
ellipse (X_CENTRE, Y_CENTRE, DOME_SIZE, DOME_SIZE);

//party hat
fill (67, 246, 173);
strokeWeight (0);
triangle (X_CENTRE, (Y_CENTRE - (DOME_SIZE*2)), (X_CENTRE + (DOME_SIZE/2)), (Y_CENTRE - (DOME_SIZE/3)), (X_CENTRE - (DOME_SIZE/2)), (Y_CENTRE - (DOME_SIZE/3)));

//party hat pom pom
fill (180, 216, 201);
strokeWeight (0);
ellipse (X_CENTRE, (Y_CENTRE - (DOME_SIZE*2)), PARTY_POM_POM, PARTY_POM_POM);
