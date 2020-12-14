Spaceship joe=new Spaceship();
ArrayList <Asteroid> bob=new ArrayList<Asteroid>();
Star[] nightSky=new Star[200];
public void setup() 
{
  size(500,500);
  for(int i=0; i<nightSky.length; i++){
    nightSky[i]=new Star();
  }
  for(int i=0; i<10; i++){
    bob.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  joe.show();
  joe.move();
 
  for(int i=0; i<nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i=0; i<bob.size(); i++){
    bob.get(i).move();
    bob.get(i).show();
    float d=dist(joe.getX(), joe.getY(), bob.get(i).getX(), bob.get(i).getY());
    if (d<5){
      bob.remove(i);
    }
  }
}
public void keyPressed(){
  if(key == 'a'){
  joe.turn(-7);
  } else if(key == 'd'){
  joe.turn(7);
  } else if(key == 'w'){
  joe.accelerate(0.3);
  } else if(key == 's'){
   joe.hyperspace();
  } 
}
