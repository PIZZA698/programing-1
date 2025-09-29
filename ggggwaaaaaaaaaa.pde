float x,y;
void setup(){
x = width/2;
y = width/2;
background (#FAFAFA);
}
void draw(){
ellipse(x,y,10,10);
}
void mousepressed (){
x =mouseX;
y =mouseY;
}
