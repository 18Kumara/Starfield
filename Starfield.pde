
Particle[] myParticle;
void setup()
{ background(0);
  myParticle = new Particle[700];
 
    size(1000,1000);  
    for (int nI = 0; nI < myParticle.length; nI++) {
    myParticle[nI] = new NormalParticle();
    myParticle[1] = new JumboParticle();
    
  //your code here
    }
    myParticle[0] = new OddballParticle();
    
}
void draw()
{
  //background(0);
  fill(0,0,0,33);
  rect(0,0,1000,1000);

  for (int nI = 0; nI < myParticle.length; nI++){
  myParticle[nI].move();
  myParticle[nI].show();
  
  
  
  
  }
 // background(0);
}
class NormalParticle implements Particle
{
  double dX,dY,dTheta,dSpeed;
  int color1;
  int color2; 
  int color3;
  
  public NormalParticle() {
    dX = 500;
    dY = 500;
    dTheta = Math.random() * 2 * Math.PI;
    dSpeed = Math.random() * 10;
    
  }
  public  void move() {
    dX = Math.cos(dTheta) * dSpeed + dX;
    dY = Math.sin(dTheta) * dSpeed + dY;
  }
  public  void show() {
    color1 = (int)random(0,255);
    color2 = (int)random(0,255);
    color3 = (int)random(0,255);
  fill(color1,color2,color3);
    ellipse((int)dX,(int)dY,10,10);
     stroke( 255 );
    
  }
} 
  //your code here

interface Particle
{
   void show();
   void move();
}
class OddballParticle implements Particle
{
  double bX,bY,bTheta,bSpeed;
  int color11;
  int color22; 
  int color33;
  
  public OddballParticle() {
    bX = 250;
    bY = 500;
    bTheta = Math.random() * 2 * Math.PI;
    bSpeed = random(1,3);
    
  }
  public  void move() {
    bTheta = Math.random()*2*Math.PI;
    bX = Math.cos(bTheta) * bSpeed;
    bY = Math.sin(bTheta) * bSpeed;
    
  }
  public  void show() {
    color11 = (int)random(0,255);
    color22 = (int)random(0,255);
    color33 = (int)random(0,255);
  fill(color11,color22,color33);
    rect((int)random(100,900),(int)random(100,900),50,50);
     stroke( 255 );
    
  }
  
  

}
class JumboParticle extends OddballParticle
{
  double aX,aY,aTheta,aSpeed;
  int color111;
  int color222; 
  int color333;
  
  public JumboParticle() {
    aX = 250;
    aY = 500;
    aTheta = Math.random() * 2 * Math.PI;
    aSpeed = random(1,3);
    
  }
  public  void move() {
    aTheta = Math.random()*2*Math.PI;
    aX = Math.cos(bTheta) * bSpeed;
    aY = Math.sin(bTheta) * bSpeed;
    
  }
  public  void show() {
    color111 = (int)random(0,255);
    color222 = (int)random(0,255);
    color333 = (int)random(0,255);
  fill(color11,color22,color33);
    ellipse((int)random(100,900),(int)random(100,900),200,200);
     stroke( 255 );
}
}


