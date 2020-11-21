Spaceship joe = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
  nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  joe.show();
  joe.move();
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
public void keyPressed(){
  if(key == 'a'){
    joe.turn(-8);
  }else if(key == 'd'){
    joe.turn(8);
  }else if(key == 'w'){
    joe.accelerate(0.3);
  }else if(key == 'e'){
    joe.hyperspace();
  }
}
