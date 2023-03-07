public class Bar{ // créationde la class bar 
  private float x,y,wbar,miwbar,hbar,hmargin,vx,vy; // j'imagine bine que c'est le mouvement de la bar sur l'axe x et y 
  private boolean display; // affichage de la bar 
  
  public Bar(float pwbar, float phbar){ // construteur de la bar 
    wbar=pwbar;
    hbar=phbar;
    init(wbar, hbar);
  }

  
  public void init(float wbar, float hbar){ // paramètre de la bar 
    hmargin = 2; //hauteur en fonction du sol de la bar 
    miwbar = wbar / 2; //apparition de la balle sur la bar 
    x = width / 2; // ne sert a rien malgré le changement des chiffres 
    y = height - hbar - hmargin;
    vy = 0;
    vx = 0;
    display = true;
  }
  
  public void display(){ // affichage des couleurs de la bar et de la bar 
    if (display){
      x = mouseX;
      fill(#00D8AE);
      rect(x-miwbar,y,wbar,hbar);
    }
  }
  
  public float getY(){
    return y;
  }
  
  public float getX(){ // pour changer chaque fonction de la bar 
    return x;
  }
  
  public float size(){
    return wbar;
  }
}
