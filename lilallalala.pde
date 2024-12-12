int pregman = 0;
int pregnb = 0;
int pregwomen = 0;
PFont noto;
void setup ( ){
  size(400, 200);
  noto = createFont("noto sans", 50);
}
void draw (){
  background(0);
  textSize (16);
  text("votes: " + pregman, 90, 140);
  text("votes: " + pregnb, 175, 140);
  text("votes: " + pregwomen, 250, 140);
  textSize(32);
  textFont(noto);
  text("🫃", 50,100);
  text("🫄", 250, 100);
  text("🤰", 150,100 );
String winner = "  ";
if ( pregman > pregnb && pregman > pregwomen){
 winner = "pregman";
 fill (255, 0, 0); 
} else if (pregnb > pregman && pregnb > pregwomen ) {
  winner = "pregnb";
} else if (pregwomen > pregnb &&  pregwomen > pregman) {
 winner = "pregwomen"; 
}else{
  //fill (0);
}
}
  void keyPressed(){
    if (key == 'h'){
      pregman++;
    }else if( key == 'g'){
      pregnb++;
    }else if ( key == 'i' ){
      pregwomen++;
    }
    }
