public class Brick {
  private float x = 0, y = 0;
  private float wbrick = 50;
  private float hbrick = 10;
  private float R,G,B;
  private boolean visible = true;

  public Brick(){
  }
 
  public Brick(float px, float py, float pwbrick, float phbrick){
    x = px;
    y = py;
    wbrick = pwbrick; // x
    hbrick = phbrick; // y
    setColor(random(255),random(255),random(255));
  }
  
  public void putBrick(Ball ball){
    float xball = ball.getX();
    float yball = ball.getY();
    float radius = ball.getRadius();
    if (visible){
      if (is_collided_with_ball(xball,yball,radius)){
        hide();
        ball.bounceY();
      } else {
        fill(R,G,B);
        rect(x,y,wbrick,hbrick);
      }
    }
  }
  
  public boolean is_collided_with_ball(float xball, float yball, float radius){
    float testX = xball;
    float testY = yball;

    if (testX < x)
        testX = x;
    if (testX > (x + wbrick))
        testX = (x + wbrick);
    if (testY < y)
        testY = y;
    if (testY > (y + hbrick))
        testY = (y + hbrick);

    return ((xball - testX) * (xball - testX) + (yball - testY) * (yball - testY)) < radius * radius;      
  }

  public float weight(){
    return wbrick;
  }

  public float height(){
    return hbrick;
  }

  public float getX(){
    return x;
  }
  
  public float getY(){
    return y;
  }
  
  public void setColor(float pR, float pG, float pB){
    R=pR;
    G=pG;
    B=pB;
  }
  
  public void hide(){
    visible = false;
  }

  public boolean isVisible(){
    return visible;
  }
  public boolean isHidden(){
    return !visible;
  }
}
