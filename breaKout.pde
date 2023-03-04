/** breaKout **/
// 4 première ligne je vois une création de fichier/emplacement nommé ball,bar,wall,score//
Ball ball;
Bar bar;
Wall wall;
Score score; 
Timer timer;

private int wallCols, wallRows; // x,y je vois que nous somme en train de crée le nombre de ligne de briques a casser avec la balle 
private float diameter, radius; //  je comprend la création d'un diametre (la tille de la balle)
private float wbar, hbar, miwbar; //je comprend que nous parlons de la raquette nommé "bar"
private int live; //je comprend la création du scoreboard au niveau du coté gauche.

void setup() {
  live = 3; // nous commencons avec 3 vies.
  wallCols = 12; //  c'est la création du nombre de ligne de briques, wallcols est le nombre de brique en longueur et wallrow en largeur.
  wallRows = 14;
  diameter =20; // est la création du diamètre de la balle.
  radius = diameter/2; // je ne comprend pas du tout ce que cela signifie.
  wbar = 100; // création de la longueur de la raquette
  hbar = 10; // paramètre de largeur de la raquette
  miwbar = wbar/2; // position de la balle au depart au milieu de la raquette
  size(800, 600); // taille de la fenetre crée
  ball = new Ball(diameter, 600, 600, live); // limite avant la mort de la balle, caractéristique de la balle 
  bar = new Bar(wbar,hbar); // création de la raquette
  wall = new Wall(wallCols,wallRows);  // x,y création du mur 
  score = new Score(wall, ball); // affichage du score et création du score avec le codage du mur et de la balle 
  timer = new Timer(300,300,10);
}

void draw(){
  background(255,255,255); // cela va être toute les variable de couleur RGB avec 255 taux de couleur différente pour chaucun des trois 
  ball.display(); // affichage de la balle
  bar.display(); //affichage de la raquette
  if (ball.mv){ // si la balle est en mouvement  mv = mouvement 
    is_bounced_with_bar(); // je comprend que c'est pour faire un rebondissment avec la raquette.
  }
  wall.display(ball); // afichage du mur et lui donne les coordonnee de la balle 
  score.display(); //affiche le score 
}

void mousePressed(){ // je pense que ces lignes servent à faire que une fois le bouton de la souris pressée la balle commence a partir vers les briques qu'elle doit casser.
  if (!ball.mv) {
    ball.setY(ball.getY()-10);
    ball.setVY(-10);
    ball.mv = true;
  
  }
  if (ball.live < 0) {
    exit();
  }
}

void is_bounced_with_bar(){ // une fois la balle rebondissant sur la raquette 
  float Y = ball.getY();
  float X = ball.getX();
  if ( Y + radius > bar.getY() && ( X > bar.getX() - miwbar && X < bar.getX() + miwbar) ){
    ball.bounceY();
  }
}

Timer StartTimer;

void draw()
{
  background(200); 
  startTimer.countUp();
  fill(0);
  text(startTimer.getTime(),20,20);
  
  
  
}
