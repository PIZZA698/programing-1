PImage quad;
PImage drgon;
PImage fourprep;
String name = "QUAD";
void setup(){
 size(500,600);
 background(#FF9CAE);
 quad = loadImage("lilas pokemon card again.jpg");
 drgon = loadImage("quadyay.jpg");
 fourprep = loadImage("tooey.jpg");
}
 
 
void draw(){
  image (quad, 100,500,300,400);
  image (drgon, 300, 400, 30, 40);
  image (fourprep, 200,200, 30,50);
}
