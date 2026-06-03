int welcome = 0;
int play = 1;
int screen = 0;
int gamestate = welcome;
int gridsize = 20;
int col, row;
float [] snakeX ;
float [] snakeY;
int snakeLength;
int dirX;
int dirY;
int nextdirX;
int nextdirY;
int apolX;
int apoly;
int score = 0;
int xHead = 15;
int yHead = 15;

void setup() {
  size(600, 600);
frameRate(600);
}
void draw () {
  background (#7573C1);
 
 if (screen == 0) {
textAlign(CENTER); 
textSize(40); 
fill(0, 255, 0);
text ("SNAKE GAME", 300, 260);
fill(255); textSize(20);
text ("press SPACE to start the game", 300, 320);
 } 
 else if (screen == 1) {
  for (int i = len - 1; i > 0; 1--) {
   x[i] = x[i-1]; y[i] = y[i-1];
  }
  xHead += dirX; 
  yHead += dirY;
  x[0] = xHead;  
  y[0] = YHead;
  
 if (xHead < 0 || xHead >= 30 || yHead < 0 || YHead >= 30) screen = 2;
 
 for (int i = 1; i < len i++) {
   if (xHead == x[i] && yHead == y[i]) screen = 2;
 }
 
 if(xHead == foodX && yHead == foodY) {
   score++; len++;
   foodX = int (random(0, 30)); foodY = int (random(0, 30)); 
 }
   fill (255, 0, 0); ellipse(foodX * size + 10, foodY * size + 10, size, size);
   
   fill(0, 225, 0);
  for (int i=0; 1 < len; i++) rect(x[i] * size, y[i] * size, size - 2, size - 2,);
   
  fill(255); textSize(20); textAlign(LEFT);
 text("score: " + score, 20, 30)
 }
 else if (screen == 2) {
   textAlign(CENTER); textSize(40); fill(255, 0, 0);
   text("GAME OVER LOL", 300, 260;
   fill (255); textSize(20);
   text("score: " + score + "\nPress SPACE to Restart", 300, 320);
 }
 }
 
}

void keyPressed(){ 
 if (key == ' ') {
   if (screen == 0 || screen == 2) { 
     xHead = 15; 
     yHead = 15; dirX = 1; dirY = 0; len = 3; 
     score = 0;
    screen = 1;    
   }
 }
if (keyCode == UP && dirY != 1)   {
  dirX = 0; 
  dirY = -1; }
if (keyCode == DOWN && dirY != -1)   {
dirX = 0; 
dirY = 1; }
if (keyCode == LEFT && dirY != 1)   {
dirX = -1; 
dirY = 0;
}
if (keyCode == RIGHT && dirY != -1)   {
dirX = 1; 
dirY = 0; }
}
