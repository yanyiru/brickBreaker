public class Pipe{
  
  PImage pipeTop, pipeBottom;
  int pipeX;
  float pipeY, space;
  
  public Pipe(int x){
    pipeTop = loadImage("./image/pipeTop.png");
    pipeBottom = loadImage("./image/pipeBottom.png");
    pipeX = x;
    pipeY = int(random(-200,0));
    space = int(random(0, 200));
  }
  
  void movePipe(){
    image(pipeTop, pipeX,pipeY);
    image(pipeBottom, pipeX, pipeY + 500 + space ); // + int(random(100))
    pipeX -= 10;
    
    if(pipeX < -800){
      pipeX = width;
     space=int(random(0,200));
    }
    checkCollision();
  }
  void checkCollision(){
    if(pipeX>30&&pipeX<20){
      if(planeY<pipeY+300||planeY>){
        pipeX=width;
      }
      
      
    }
  }
}
