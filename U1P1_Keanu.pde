PImage Keanu;
int count = 500;
int KeanuX[] = new int[5]; //{0,150,300,450,600,750};
int scene=0;



blood[] blood = new blood[count];

void setup()
{
  size(800, 800);
  rectMode(CENTER);
  background(255); 

  Keanu = loadImage ("keanu.png");
  Keanu.resize(150, 200);

  for (int i=0; i<count; i++)
  {
    blood[i] = new blood();
  }

  for (int i=0; i<5; i++)
  {
    KeanuX[i]=i*150;
  }
}

void draw()
{
  background(255); 
  fill(255, 0, 0);
  rect(400, 400, 100, 100);
  fill(0, 0, 255);
  ellipse(400, 400, 50, 50);

  ellipse(mouseX, mouseY, 25, 25);



  for (int i=0; i<count; i++)
  {
    blood[i].Render();
    blood[i].Fall();
  }

  for (int i=0; i< 5; i++)
  {
    // KeanuX[i] = KeanuX[i-1] + 150;
    image(Keanu, KeanuX[i], 600); 




    
  }
}