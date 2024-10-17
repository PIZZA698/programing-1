// Programming 1
// Pokemon Card Template
String name;
PImage img;  // Declare a variable of type PImage
void setup() {
  size(500, 800);  // Set the window size
  background(255);  // Set the background color to white
  name= "gleep";
  img = loadImage("gleep.jpg");  // Load the image file (replace with your file name)
}

void draw() {
  rect(100,200,300,800);
  image(img, 0, 0, 400, 400);  // Draw the image at position (0, 0) and scale it to fit the window
}
