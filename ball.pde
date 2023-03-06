class Ball{
    private float x,y,vx,vy,diameter,radius;
    private int wscreen,hscreen;
    private boolean mv;
    private int live;
    private int cr;
    private int cg;
    private int cb;
    
    
    public Ball(float pdiameter,int pwscreen,int phscreen, int plive, int pcr, int pcg, int pcb) {
        diameter = pdiameter;
        wscreen = pwscreen;
        hscreen = phscreen;
        live= plive;
        cr =pcr;
        cg =pcg;
        cb =pcb;
        init(pdiameter);
  }
    
    public void init(float pdiameter) {
        diameter = pdiameter;
        radius = diameter / 2;
        x = width / 2;
        y = height - diameter - 1;
        vy =-10;
        vx =random( - 5, - 2);
        mv =false;
}
    
    public void bounceY() {
        vy *= -1;
}
    
    public void bounceX() {
        vx *= -1;
}
    
    public void bounceXY() {
        bounceX();
        bounceY();
}
    
    public void display() {
        if (live > 0) {
            //fill(#FFF80D);
            fill(cr, cg, cb);
            stroke(0);
            ellipse(x,y,diameter,diameter);
           if (mv) {
               x += vx;
               y += vy;
                if (x > wscreen - radius || x < radius) {
                   vx *= -1;
                }
                if (y < radius) {
                   vy *= -1;
                }
                if (y > hscreen + diameter) {
                    init(diameter);
                    live--;
                }
        } else {
                x = mouseX;
        }
        }
}
    
    public void setY(float py) {
        y = py;
}
    
    public void setVY(float pvy) {
        vy =pvy;
}
    
    public float getY() {
        return y;
}
    
    public float getX() {
        return x;
}
    
    public float getRadius() {
        return radius;
}
    
    public float getVX() {
        return vx;
}
    
    public float getVY() {
        return vy;
}
    
    public int getLive() {
        return live;
}
}
