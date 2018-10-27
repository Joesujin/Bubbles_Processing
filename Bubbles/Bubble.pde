class Bubble
{
  float x;
  float y;
  float diam;
  float yspeed;
  float xspeed;
  float col;
  
  Bubble(float tempD,float tempC)
  {
    x = random(width);
    y = height;
    diam = tempD;
    yspeed = random(3,10);
    xspeed = random(3,10);
    col = tempC;
  }
  
  void display()
  {
    //noStroke();
    stroke(0);
    fill(col,20,50);
    ellipse(x,y,diam,diam);
  }
  
  void ascend()
  {
    y = y-yspeed;
    x = x + random(-2,2);
  }
  
  void top()
  {
    if (y <= -diam)
    {
      y = height;
    }
  }
  
  void chaotic()
  {
        x = x + xspeed;

    if(x<=diam/2||x>=width)
    {
      xspeed = xspeed * -1;
    }
    if(y<=diam/2||y>=height)
    {
      yspeed = yspeed * -1;
    }
  }
  
  
}
