PImage bg, plane;
int bgX, bgY, planeY, gravity,score;
Pipe[] pipeArray;
void setup(){
  size(800, 600);
  bg = loadImage("./image/bg.png");
  plane = loadImage("./image/ufo.png");  
  bgX = 0;
  bgY = 0;
  planeY = height/2;
  gravity = 0;
  pipeArray = new Pipe[4];
  for(int i=0; i<pipeArray.length;i++){
    pipeArray [i]=new Pipe(width+i*400);
  }
  score=0;
  
}
void draw(){
  movebg();
  movePlane();
  movePipes(); //method to move all pipes in the array
  showScore();
}

void showScore(){
  textSize(32);
  text("score: " + score,10,30);
}

void movePipes(){
  for(int i=0; i<pipeArray.length;i++){
    pipeArray[i].movePipe(); //call the pipe class methyod for all pipes
  }
}

void movebg(){
  image(bg, bgX , 0, width, height); 
  image(bg, bgX+width , 0, width, height); 
  bgX-=3;
  if (bgX<-width){
    bgX = 0;
    score++;
   }

}
void movePlane(){
 image(plane, 30, planeY, 90, 70); 
 planeY+= gravity;
 gravity +=1;
}
void mouseClicked(){
  gravity = -15;
}
