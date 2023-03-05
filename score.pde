public class Score {

  private Wall w;
  private Ball b1, b2;
  
  public Score(Wall pw, Ball pb1, Ball pb2) {
    w = pw;
    b1 = pb1;
    b2 = pb2;
  }

  public void display(){
    fill(255);
    stroke(255);
    fill(0);
    rect(600,1,200,600);
    
    if ( b1.live < 0) {
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
      text("Live: " + b1.getLive(), 610, 100);
    }
  }
}
