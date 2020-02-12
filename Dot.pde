public class Ball{
 
  //instance variables
  int x;
  int y;
  int h;
  int w;
  float xVel;
  float yVel;
 
  //constructor
  public Ball(){
    println(width);
    x = width/2;   //left-right middle of the screen
    y = height/2;   //vertical middle of screen
    h=30;           //height of ball
    w=30;            //width of ball
    xVel=2;          //speed in horizontal direction
    yVel=2;          //speed in vertical direction
  }
  public void show(){
    ellipse(x,y,w,h);     //draws an ellipse at x,y location, if w=h then a circle is drawn
    fill(255,255,255);
}
 
  public void update(){
    x+=xVel;              //updates the ball to a new x and y position
    y+=yVel;
  }
 

 public void bounceAtEdge(){                   //if ball hits edge of screen, change its appropriate direction and update the position
    if( x>width || x<0 ){
      xVel*=-1;
      update();
    }
    if(y<0){
      yVel*=-1;
      update();
    }
    if( y>height){
      x=width/2;
      y=height/2;
    }
   
  }
  
 

}
