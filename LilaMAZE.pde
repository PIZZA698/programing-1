int playerX = 0;
int playerY = 0;
int goalX = 4;
int goalY = 4;
boolean gameWon = false;
void setup(){
size(400,400);
textSize(20);
}
void draw(){
background(#8AED45);

for (int i=0; i<5; i++){
 for (int o=0; o<5; o++){
   rect(i * 80, o*80, 80, 80);
 }
}

fill (#14608E);
rect(playerX*80, playerY*80, 80, 80);
fill (#45C2ED);
rect(goalX*80, goalY*80, 80, 80);

if (gameWon){
 fill (#8AED45);
 text ("u won", 80,80); 
}
 }
void keyPressed(){
if (keyCode == UP && playerY > 0) {
playerY--;
} else if (keyCode == DOWN && playerY < 4) {
playerY++;
} else if (keyCode == LEFT && playerX < 0) {
playerX--;
} else if (keyCode == RIGHT && playerY < 4) {
playerX++;
}

 if (playerX == goalX && playerY == goalY) {
   gameWon = true;
 }
}
  
  


 
