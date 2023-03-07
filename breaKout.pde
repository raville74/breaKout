/** breaKout **/
// 4 première ligne , une création de fichier/emplacement nommé ball,bar,wall,score//
Ball[] ballx;
Bar bar;
Wall wall;
Score score; 
Timer timer;

private int wallCols, wallRows; // x,y je vois que nous somme en train de crée le nombre de ligne de briques a casser avec la balle 
private float diameter, radius; //  je comprend la création d'un diametre la taille de la balle
private float wbar, hbar, miwbar; //je comprend que nous parlons de la raquette nommé "bar"
private int live; //je comprend la création du scoreboard au niveau du coté gauche.
private int nbBall;

void setup() {
  live = 3;
  nbBall = 1;
  wallCols = 12; //  c'est la création du nombre de ligne de briques, wallcols est le nombre de brique en longueur et wallrow en largeur.
  wallRows = 10;
  diameter = 20; // est la création du diamètre de la balle.
  radius = diameter/2; // je ne comprend pas du tout ce que cela signifie.
  wbar = 100; // création de la longueur de la raquette
  hbar = 10; // paramètre de largeur de la raquette
  miwbar = wbar/2; // position de la balle au depart au milieu de la raquette
  size(800, 600); // taille de la fenetre crée
  ballx = new Ball[nbBall];
  for (int i = 0; i < nbBall; i++) {
    ballx[i] = new Ball( 20, 600, 600, 3, 155, 155, 0);
  }
  bar = new Bar(wbar, hbar); // création de la raquette
  wall = new Wall(wallCols, wallRows);  // x,y création du mur 
  score = new Score(wall, ballx); // affichage du score et création du score avec le codage du mur et de la balle 
  timer = new Timer(300, 300, 10);
}

void draw(){
   background(255,255,255); // cela va être toute les variable de couleur RGB avec 255 taux de couleur différente pour chaucun des trois 
   for (Ball b : ballx) {
     b.display();
  }
  bar.display(); //affichage de la raquette 
  wall.display(ballx); // afichage du mur et lui donne les coordonnee de la balle
  score.display(); //affiche le score 
}

void mousePressed(){
    int v = nbBall;
    for (Ball b : ballx){
        if (!b.mv) {
            b.setY(b.getY()-10);
            b.setVY(-10);
            b.mv = true;
        }
        if (b.live <= 0) {
            v--;
        }
    }
    if (v == 0) {
      exit();
    }
}
void is_bounced_with_bar(Ball b){  
  float Y = b.getY();
  float X = b.getX();
  if ( Y + radius > bar.getY() && ( X > bar.getX() - miwbar && X < bar.getX() + miwbar) ){
    b.bounceY();
  }
}

