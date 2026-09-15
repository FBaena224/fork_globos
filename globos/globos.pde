class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      imageMode(CENTER);
      image(cara,x,y,60,60);
      ellipse(x,y+100,1,80);
      ellipse(x,y,80,100);
      triangle(x,y+50,x-10,y+60,x+10,y+60);
  }
  
}

PImage cara;

ArrayList<Globo> globos;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  cara=loadImage("trump.jpg");

}

void draw()
{
  background(20,200,200);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
