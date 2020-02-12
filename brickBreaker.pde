float x;   //left-right middle of the screen
float y;
float h=10;           //height of Dot
float w =70;            //width of Dot
float xVel=1;          //speed in horizontal direction
Ball b;
Brick[] brick;
    
public void setup(){
  size(600,400);
  b=new Ball();
  brick=new Brick[55];
  x = width/2;
  y=height-(height/10);
  for(int i=0; i<brick.length; i++){
    brick[i] = new Brick();             //creates a new ball object
  }
}

void draw(){
  background(0);
  rect(x,y,w,h);
  checkKeyPresses();
  b.show();
  b.update();
  b.bounceAtEdge();
  ballCollision();
  int k=0;
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 9; j++){
        if(i%2==0){
          brick[k].x=j*(width/9);
          brick[k].y=i*20;
          brick[k].show();
        }
        if(i%2==1){
          brick[k].x=j*(width/9);
          brick[k].y=i*20;
          brick[k].show();
        }
        k++;
    }
  }
  for(int i = 0; i < 55; i++){
    brick[i].brickCollision();
  }
}
 
 
 void checkKeyPresses(){
  if(keyPressed){
  
      if(keyCode==LEFT){
        x-=5;
        if(x<0 ){
          x=0;
        }
      }
      else if(keyCode==RIGHT){
        x+=5;
        if( x>width-w){
          x=(width-w);
        }
      }

  }
 }
  
void ballCollision(){
  checkKeyPresses();
  boolean one=(x<(b.x+(b.w/2)));
  boolean two = ((b.x+(b.w/2))<(x+w));
  boolean three = y<(b.y+(b.w/2));
  boolean four = (b.y+(b.w/2))< (y+h);
  
  if((x<(b.x+(b.w/2))) && ((b.x+(b.w/2))<(x+w)) && y<(b.y+(b.w/2)) && (b.y+(b.w/2))< (y+h)){
    b.yVel*=-1;
  }
  println("1: " + one);
  println("2: " + two);
  println("3: " + three);
  println("4: " + four);
  
  
  
  

}

 
