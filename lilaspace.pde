int spaceshipX;
boolean BulletFired = false;
int bulletx = -10;
int bullety = -10;

void setup (){
   size(600,600);
   spaceshipX = width/2;
}

void  draw(){
  background (0);
  fill (74, 214, 0);
  rect(spaceshipX, height-40, 40, 20);

  fill (265,0,0);
  for(int i=0; i<5;i++){
     rect (i*60+50, 50, 40, 40);
   }
   
  if (BulletFired){   
     fill (255);
     rect (bulletx, bullety, 5,10);
     bullety -= 5;
 
       if (bullety < 0){
        BulletFired = false;
     }
  }
}

void keyPressed (){
if( keyCode == LEFT && spaceshipX>0){
  spaceshipX -= 10;
} else if (keyCode == RIGHT && spaceshipX < width - 40){
  spaceshipX += 10;
} else if (key == ' ') {
       if (!BulletFired){
         BulletFired = true;
         bulletx = spaceshipX + 20;
         bullety = height - 40;
       }
     }
}
