// Bit Operattor BitMap
// Sumit Saini
// https://github.com/sumqwerty

int[][] red;
int[][] green;
int[][] blue;
int num;
int inc;
PImage img;
int lim = 0;
boolean flip=false;
boolean save=false;
void setup()
{
  size(1000,1000,P2D);
  num = 1000;
  inc = 1000/num;
  red = new int[num][num];
  
  //green = new int[num][num];
  //blue = new int[num][num];
}

void reset(char oper)
{
  
  for(int i=0; i<num; ++i)
  {
    for(int j=0; j<num; ++j)
    {
      if(oper == 'a')red[i][j] = i&j;
      else if(oper == 'o')red[i][j] = i|j;
      else if(oper == 'x')red[i][j] = i^j;
      else if(oper == 'm')red[i][j] = i-j;
      //red[i][j] = i^j;
      //green[i][j] = i&j;
      //blue[i][j] = i|j;
    }
  }
  
  background(0,0,0);
  noStroke();
}

void keyPressed()
{
  lim=0;
  if(key=='a')
  {
    reset('a');
  }
  else if(key=='o')
  {
    reset('o');
  }
  else if(key=='x')
  {
    reset('x');
  }
  else if(key=='m')
  {
    reset('m');
  }
  save = true;
}

void draw()
{
  for(int k=0; k<num; k+=1)
  {
    for(int l=0; l<num; l+=1)
    {
      int x = k*inc;
      int y = l*inc;
      fill(map(red[l][k],0,num-1,0,255));
      rect(x,y,inc,inc);
    }
  }
  if(save)
  {
    //saveFrame("######.png");
    save=false;
  }
}
