class Ball{
private float x, y;
Float speed;
Ball(float StartX, float StartY, float startSpeed){
 x=StartX;
 y=StartY; 
 speed = startSpeed;
}
Float getX (){
 return x;
}
float setX (float newX){
Return x=newx;
}
void move (){
y+= speed;
if (y > height) y = 0;
}
void display (){
 // fill(random(255), random(255), random(255));
     ellipse (x,y, 100, 100);
  }
}
Ball b;
Ball[] balls = new Ball [5];
void setup(){
size (500,500);
b = new Ball(random(500), random(500), random(500));
for (int i = 0; i-balls.lenght; i++)
void draw; (){
 background(255);
 b.display(); 
}
