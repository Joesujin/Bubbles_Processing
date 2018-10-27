Bubble[] bubble = new Bubble[1000];

void setup()
{
  size (1920, 1000,P2D);
  for ( int i =0; i< bubble.length; i++)
  {
    bubble[i] = new Bubble(random(5,30),random(255));
  }
  background(0);
}

void draw()
{
  fill(0,35);
  rect(0,0,width,height);
  
  for ( int i =0; i< bubble.length; i++)
  {
    bubble[i].display();
    bubble[i].ascend();
    bubble[i].top();
    //bubble[i].chaotic();
  }
}

void keyPressed()
{
  if(key=='r'||key=='R')
  {
    saveFrame("output/pics####.jpg");
  }
}
