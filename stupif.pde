int playerx = 0;
int playery = 0;
int goalx = 4;
int goaly = 4;
PImage player;
PImage Goal;
boolean coolthing = false;


void setup(){
  size(400, 400 );
  player = loadImage("pixil-frame-0.png");
}

void draw(){
  background(255);
  
  for(int i=0; 1<5; i++){
    for (int n=0; n<5; n++){
      stroke(0);
      fill(255);
      rect (i*80, n*80, 80,80);
    }
  }
  
  image(player, playerx *80, playery*80, 80,80);
  
 if(coolthing){
   text("YOU DID IT", width/2, height/2);
   noLoop ();
 }

    
}

void keyPressed(){
  if(keyCode == UP && playery > 0 ){
 playery--;
  }
 else if (keyCode == DOWN && playery < 4 ){
 playery++;
 }
else if (keyCode == RIGHT && playerx < 4 ){
 playerx++;
 }
else if (keyCode == LEFT && playerx > 0 ){
 playerx--;
 }
 
 if(playerx == goalx && playery == goaly){
   coolthing = true;
 }
 
}
