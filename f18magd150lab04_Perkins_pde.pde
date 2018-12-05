int crust = 40;
int cheese = 255;
int x = 0;
float X = 0;
float Y = 0;
float y = 0;
 
void setup(){
  size(420, 420);
}
void draw(){
  background(100);
  fill(200, 100, 0);
  triangle(75, 75, 345, 75, 210, 345);
  fill(170, 100, 0);
  beginShape();
  vertex(73, 75);
  vertex(347, 75);
  vertex(362, 43);
  vertex(60, 43);
  endShape();
  stroke(255);
  strokeWeight(1);
  
  X = 50;
  while(X < width) {
    line(X, 0, X, height);
    X = X + 50;
  }
  
  Y = 50;
  while(Y < height) {
    line(0, Y, width, Y);
    Y = Y + 50;
  }
 
  if(mousePressed == true){
    fill(255, 50, 0);
  } else {
    noFill();
  }
   ellipse(210, 240, 40, 40);
   ellipse(125, 105, 40, 40);
   ellipse(275, 135, 40, 40);
  if (keyPressed == true) {
    fill(0);
  } else {
    fill(360);
  }
  rect(280, 80, 20, 20);
  rect(155, 120, 20, 20);
  rect(210, 130, 20, 20);
  rect(235, 210, 20, 20);
  rect(175, 175, 20, 20);
  rect(200, 280, 20, 20);
  fill(crust);
  rect(125, 47, 10, 10);
  fill(crust);
  rect(175, 60, 10, 10);
  fill(crust);
  rect(215, 45, 10, 10);
  fill(crust);
  rect(315, 48, 10, 10);
  fill(crust);
  rect(85, 57, 10, 10);
  fill(crust);
  rect(275, 60, 10, 10);
  fill(cheese);
  rect(145, 175, 10, 20);  
  fill(cheese);
  rect(255, 170, 10, 20);  
  fill(cheese);
  rect(205, 305, 10, 20);
  fill(cheese);
  rect(205, 85, 10, 20);
  
}
void mousePressed() {
  if (crust == 40) {
    crust = 0;
  } else {
    crust = 40;
  }
}
void keyPressed() {
  if (cheese == 200) {
    cheese = 255;
  } else {
    cheese = 200;
  }
}
