size (500, 500);
int grid = 10; //10x10 grid
int cellSizeX = width/grid;
int cellSizeY = height/grid;

for (int i = 0; i < 10; i++)
{
   line (0, cellSizeY*i, width-1, cellSizeY*i);
}

for (int i = 0; i < 10; i++)
{
   line (cellSizeX*i, 0, cellSizeX*i, height-1); 
}
