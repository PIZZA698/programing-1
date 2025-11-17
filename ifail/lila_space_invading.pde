int score = 0;
int spaceshipX;
int bulletX = -10;
int bulletY = -10;
int[] alienX = {50,110,170,230,290,350,410,470};
boolean[] isAlive = {true,true,true,true,true,true,true,true};
boolean bulletFired = false;

void setup(){
  size(600,600);
  spaceshipX= width/2;
  }
void draw (){
background(#040005);
fill (0,255,0);
rect (spaceshipX, height-90,100,40);
fill (#D243FF);
for (int i=0; i<8; i++){
if (isAlive[i]){
  rect(alienX [i],50,50,40,40); 
}
}
 textSize (20);
 text ("score:    "+score, 10,25);
  fill (233);

if (bulletFired){
   fill (255);
   rect(bulletX,bulletY, 50, 10);
   bulletY-=5;
   if (bulletY < 0){
     bulletFired = false;
     
     }
     
 for (int i=0; i<8; i++){  
   if (isAlive[i]){
     if (bulletX > alienX[i] && bulletX < alienX[i] + 40 && bulletY > 50 && bulletY < 90) {
        isAlive[i] = false;
        bulletFired = false;
        score +=1;
     }
  }
 }
}
}
 void keyPressed(){
   if (keyCode == LEFT && spaceshipX >0){ 
       spaceshipX -= 10;
  } else if (keyCode == RIGHT  && spaceshipX < width - 40){
    spaceshipX +=10; 
  }else if (key == ' '){
    if (!bulletFired){
       bulletFired = true;
         bulletX = spaceshipX+20;
           bulletY = height -40;    
    }
  }
 }
  
