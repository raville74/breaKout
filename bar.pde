public class Bar{
  private float x,y,wbar,miwbar,hbar,hmargin,vx,vy;
  private boolean display;
  
  public Bar(float pwbar, float phbar){
    wbar=pwbar;
    hbar=phbar;
    init(wbar, hbar);
  }
  
  public Bar(){
    wbar = 100;
    hbar = 10;
    init(wbar,hbar);
  }
  
  public void init(float wbar, float hbar){
    hmargin = 1;
    miwbar = wbar / 2;
    x = width / 2;
    y = height - hbar - hmargin;
    vy = 0;
    vx = 0;
    display = true;
  }
  
  public void display(){
    if (display){
      x = mouseX;
      fill(#00D8AE);
      rect(x-miwbar,y,wbar,hbar);
    }
  }
  
  public float getY(){
    return y;
  }
  
  public float getX(){
    return x;
  }
  
  public float size(){
    return wbar;
  }
}
