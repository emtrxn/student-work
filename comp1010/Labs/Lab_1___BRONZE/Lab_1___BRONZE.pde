size(420, 420);

int iceLeft;
  iceLeft = (420-320)/2;

//Light blue rectangle
fill(200, 225, 255);
rect(iceLeft, 0, 320, 420);

//Red circle
fill(255, 0, 0);
ellipse(210, 120, 240, 240);

//White circle
fill(255, 255, 255);
ellipse(210, 120, 160, 160);

//Blue circle
fill(0, 0, 255);
ellipse(210, 120, 80, 80);

//Yellow circle
fill(255, 255, 0);
ellipse(210, 120, 20, 20);

//Vertical line
line(210, 0, 210, 420);

//Horizontal line
line(iceLeft, 120, 370, 120);
