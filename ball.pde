class Ball {
    private float x,y,vx,vy,diameter,radius; //diamètre de la ball "y" et "x"
    private int wscreen,hscreen; // c'est l'endroit ou le mur sur le coté droit et gauche de la balle s'arrete 
    private boolean mv; // c'est pour crée un mouvement de la balle 
    private int live; //crée les vies de la balle 
    private int cr;
    private int cg; // ces trois lignes cr cg et cb sont pour crée une couleur RGB
    private int cb;
    
    
    public Ball(float pdiameter,int pwscreen,int phscreen, int plive, int pcr, int pcg, int pcb) { // cette ligne est le constructeur de la balle 
        diameter = pdiameter; // diamètre de la balle 
        wscreen = pwscreen; // largeur ecran
        hscreen = phscreen; // hauteur ecran
        live= plive; // c'est pour crée la vie de la balle à elle seule 
        cr =pcr;
        cg =pcg; // ces trois lignes sont aussi pour crée une couleur de la balle RGB cart a la base il y avait trois balle differente
        cb =pcb;
        init(pdiameter); // crée le diamètre de la balle 
  }
    
    public void init(float pdiameter) { // ces lignes sont pour créer le paramètre du diamètre de la balle 
        diameter = pdiameter;                                                                             
        radius = diameter / 2;
        x = width / 2;
        y = height - diameter - 1;
        vy = -10; // vitesse fixe y -10
        vx = random( -5, 5); // vitesse sur l'axe x  negative entre -5 et +5
        mv = false;
}

    public void bounceY() { // de cette ligne a la ligne 43 est pour crée un bounce avec la bar ou une brique (rebondissement)
        vy *= -1;
}
    
    public void bounceX() {
        vx *= -1;
}
    
    public void bounceXY() {
        bounceX();
        bounceY();
}
    
    public void display() { // display est donc pour afficher la balle avec ses paramètre de couleurs ci-dessous (ligne 45 à 62)
        if (live > 0) {
            fill(cr, cg, cb);
            stroke(0);
            ellipse(x,y,diameter,diameter); // balle
           if (mv) {
               x += vx;
               y += vy;
                if (x > wscreen - radius || x < radius) {
                   bounceX();
                }
                if (y < radius) {
                   bounceY();
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
