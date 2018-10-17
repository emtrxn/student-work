size(640, 400);

int iceLeft;
  iceLeft = (width-(width/2))/2;
   
int tLine;
  tLine = (6*height)/2;

int diam1foot;
diam1foot = (1*height)/21;

int diam4foot;
  diam4foot = (4*height)/21;
  
int diam8foot;
  diam8foot = (8*height)/21;
  
int diam12foot;
  diam12foot = (12*height)/21;
  
int centreIce;
  centreIce = (width/2) ;

int iceWidth;
  iceWidth = (width/2);
  
  
//Light blue rectangle
fill(200, 225, 255);
rect(iceLeft, 0, iceWidth, height);

//Red circle
fill(255, 0, 0);
ellipse((width/2), ((6*height)/21), diam12foot, diam12foot);

//White circle
fill(255, 255, 255);
ellipse((width/2), ((6*height)/21), diam8foot, diam8foot);

//Blue circle
fill(0, 0, 255);
ellipse((width/2), ((6*height)/21), diam4foot, diam4foot);

//Yellow circle
fill(255, 255, 0);
ellipse((width/2), ((6*height)/21), diam1foot, diam1foot);

//Vertical line
line((width/2), 0, (width/2), height);

//Horizontal line
line(iceLeft, ((6*height)/21), (centreIce + (iceWidth/2)), ((6*height)/21));
