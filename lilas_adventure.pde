String scene = "start";
void setup() {
  size (600, 400);
  textAlign (CENTER, CENTER);
  textSize (20);
}
void draw() {
  background (#7595AD);

  if (scene.equals("start")) {
     drawScene("you wake up in the programming classroom, will you go to the", "classroom", "elevator");
  } else if ( scene.equals("elevator")) {
     drawEnd("you picked elevator. you are now stuck");
} else if (scene.equals("classroom")) {
  drawScene("Do you rest a bit or sit in beanbag", "rest", "beanbag");
} else if (scene.equals("rest" )){
  drawEnd("try to huddle in a ball");
}  else if (scene.equals("beanbag")) {
} drawEnd ("aceept your fate"); 
}

void drawEnd(String story) {
  fill (#314D62);
  text(story, width/2, height/2 + 80);
  text ("inclick to restart", width/2, height/2 +80);
}

void drawScene(String story, String option1, String option2) {
  fill(0);
  text(story, width/2, 120);

  fill(250);
  rect(150, 250, 150, 60, 10);
  fill(0);
  text(option1, 275, 280);
  
    fill(250);
  rect(300, 250, 150, 60, 10);
  fill (0);
  text (option2, 375, 280);
}

void mousePressed() {

  
  if (scene.equals("huddle") || scene.equals("elevator") || scene.equals("beanbag") ){
  scene = "start";
  return;
  }
  
   boolean clickedLeft = mouseX > 150 && mouseX < 300 &&
                         mouseY > 250 && mouseY < 310;
                         
  boolean clickedRight = mouseX > 300 && mouseX < 450 &&
                         mouseY > 250 && mouseY < 310;
                         
 if (scene.equals("start")) {
   if (clickedLeft) scene = "classroom";
   if (clickedRight) scene = "elevator";
 } else if (scene.equals("classroom")) {
   if (clickedLeft) scene = "rest";
   if (clickedRight) scene = "beanbag";
 } 
}
  
  
