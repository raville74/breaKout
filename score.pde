public class Score {

  private Wall w;
  private Ball[] bx;
  
  // #FIXME remplacer les 3 parametres pb1... par pbx = tableau []
  public Score(Wall pw, Ball[] pbx) {
    w = pw;
    bx = pbx
  } // il me sort une érreur de syntaxe linge 10 je crois j'ai un probeleme avec l

  public void display(){
    fill(255);
    stroke(255);
    fill(0);
    rect(600,1,200,600);
    
    if ( pbx.live <= 0 ) {
      fill(0);
      stroke(0);
      PFont font = createFont("Liberation Sans", 32);
      textFont(font);
      text("Score: " + w.getScore(), 305, 375);
      //text("Live:  0", 610, 100);
      fill(0,0,0);
      textSize(30);
      text("GAME OVER", 305, 300);
      textAlign(CENTER, CENTER);
    } else {
      fill(255);
      stroke(0);
      PFont font = createFont("Liberation Sans", 32);
      textFont(font);
      text("Score: " + w.getScore(), 610, 50);
      text("bleu Live:" + pbx.getLive(), 610, 200);
    }
  }
}
