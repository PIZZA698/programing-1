int flowers = 1000;
int flowercount = 0;
float [] x = new float [1000];
float [] y = new float [1000];
float [] angle = new float [1000];
float [] swaySpeed = new float [1000];
String [] flowertype = new String [1000];
String [] flower = {"tulips", "daisys"};

void setup(){
size (600,400);
}
void draw(){
background(#B9F0FF);
drawground ();
angle [i] += swaySpeed [i];
PushMatrix ();
Translate ( x [i], y [i]);

}
void drawground(){
fill (#B9FFC2);
rect (0,200,width,200);
}
void drawflower(String type){
rect (0,50,0,50);
if (type.equals ("daisys")) {
 fill (255,100,10);
 triangle ( 10, 0, 0, 20, 10, 0);
 ellipse(0, 10, 20, 15);
} else if (type.equals ("tulips")){ 
 fill (255);
 for (int i=0; i < 8; i++){
float petalAngle = TWO_PI/ 8 * i;
float px= cos (petalAngle) *10;
float py= sin (petalAngle)* 10*10;
ellipse (px, py, 10, 15);
}
fill (255,200,0);
ellipse (0, -10, 10, 10);
}
}
void mousePressed (){
if (flowercount < flowers) {
x[flowercount] = mouseX;
y[flowercount] = mouseY;
angle [flowercount] = random (TWO_PI);
swaySpeed [flowercount] = random (0.01, 0.03);
flowertype [flowercount] = flower [ (int) random(flower.length)];
flowercount++;
}
}
