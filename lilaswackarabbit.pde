float[] Xpositions = new float [9];
float[] Ypositions = new float [9];
boolean[] moleUp = new boolean [9];
int score = 0;
void setup (){
size (600,600);
int index = 0;
for (int i=0; i<3; i++){
  for (int k=0; k< 3; k++){
Xpositions [index] = 100 * k *200;
Ypositions [index] = 100 * i *200;
moleUp [index] = false;
index++;
    }
  }
}
void draw (){
background(#BC79EA);
for (int i=0; i<9; i++){
fill (50,25,0);
ellipse(Xpositions[i], Ypositions[i], 120,60);
if (moleUp[i]){
 fill (150,100,50);
ellipse(Xpositions[i], Ypositions[i] - 20, 80,80);
}
}
if (frameCount % 60==0){
int randomIndex = (int)random(9);
moleUp [randomIndex]=!moleUp[randomIndex];
}
fill (255);
textSize (32);
text(score,20,40);
}

void mousePressed(){
for (int i = 0; i < 9; i++) { 
  float d = dist(mouseX, mouseY, Xpositions[i], Ypositions[i] - 20);
  if (moleUp[i] && d < 40) {
 moleUp[i] = false; 
 score++;
  }
}  
}
