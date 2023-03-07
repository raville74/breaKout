public class Score {

  private Wall w;
  private Ball[] bx;
  
  public Score(Wall pw, Ball[] pbx) {
    w = pw;
    bx = pbx;
  }

  public void display() {
    fill(255);
    stroke(255);
    fill(0);
    rect(600,1,200,600);
    
    int v = nbBall;
    for (Ball b : bx) {
      if ( b.live <= 0 ) {
        v--;
      }
    }

    if (v == 0) {
        fill(0);
        stroke(0);
        PFont font = createFont("Liberation Sans", 16);
        textFont(font);
        text("Score: " + w.getScore(), 305, 375);
        fill(0,0,0);
        textSize(30);
        text("GAME OVER", 305, 300);
        textAlign(CENTER, CENTER);
      } else {
        fill(255);
        stroke(0);
        PFont font = createFont("Liberation Sans", 16);
        textFont(font);
        text("Score: " + w.getScore(), 610, 50);
        int i = 0;
        for (Ball b : bx) {
          i++;
          text("Ball " + i + " Live:" + b.getLive(), 610, 70 +i*20);
        }
    }
  }
}
