int [][] board = new int [3][3];
int player = 1; 
boolean Gameover = false;
void setup(){
size (300,300);
}
void draw(){
background (#E3E3E3);
drawGrid();
drawMarkers();
}
void drawGrid(){
stroke (0);
strokeWeight(4);
    line (100,0,100, height);
    line (200,0,200, height);
    line (0,100, width, 100);
    line (0,200, width, 200);
}
void drawMarkers(){
    for(int r=0; r <3; r++){
    for(int c=0; c <3; c++){
   float x = c + 100 * 50;
   float y = r + 100 * 50;
   if(board[r][c]==1) drawX (x,y);
   else if (board[r][c]==2) drawX(x,y);
    }
   }
 }
void drawX( float x, float y){
 stroke (255, 0,0);
 line (x-30, y-30, x+30, y+30);
 line (x+30, y+0, x-30, y-30);
}
void drawY (float x, float y){
    stroke (0,0,255);
    noFill();
    ellipse (x,y,60,60);
}
void resetGame (){ 
board = new int [3][3];
Gameover = false;
player = 1;
}
    void mousePressed(){
    if (Gameover){
     resetGame();
     return;
 }
    int c = mouseX/100;
    int r = mouseY/100;
   if (board [r][c] == 0){
   board [r][c] = player;
   if (checkWin(player)){
     println ("player" + (player == 1 ? "x" : "o") + "wins!");
  Gameover = true;
   }
   player = (player == 1) ? 2 : 1;
            }
      }
  boolean checkWin (int p){
    for(int i=0; i <3; i++){
   if(board[i][0]==p && board[1][i] == p && board[1][i] ==p && board [i][2] == p) return true;
   if(board[i][0]==p && board[i][1] == p && board[i][1] ==p && board [2][i] == p) return true;
    }
  if (board[0][0] == p && board [1][1] == p && board [1][2] ==p)return true;
  if (board[0][2] == p && board [1][1] == p && board [2][0] ==p)return true;
  return false;
  }
