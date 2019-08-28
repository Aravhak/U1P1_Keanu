class blood
{

  float x;
  float y;
  float w;
  float h;
  float speedY;
  float ColorR;

  blood()
  {
    x=random(0, width);
    y=0;
    speedY=random(-5, 5);
    ColorR=128;
    w=20;
    h=20;
  }

  void Render()
  {
    noStroke();
    fill(ColorR, 0, 0);
    ellipse(x, y, w, h);
  }

  void Fall()
  {
    y=y+speedY;

    if (y>800)
    {
      y=-50;
    }
  }
}