int rectX, rectY;
int rect2X, rect2Y;
int rect3X, rect3Y;
int circleX, circleY;
int rectSize = 450;
int rect2Size = 350;
int rect3Size = 25;
int circleSize = 30;
color rectHighlight, circleHighlight;
boolean circleOver = false;
boolean rectOver = false;
color rect2Color, TVoff;
int textSize;

void setup() { 
  size(600, 500);
  background(32);
  rectX = width/2+rectSize/20 - 250;
  rectY = height/2-rectSize/2;
  rect2X = width/2 - 200;
  rect2Y = height/2 - 190;
  rect3X = width/2 + 150;
  rect3Y = height/2 - 180;
  circleY = height/2 - 50;
  circleX = width/2 + 165;
  circleHighlight = color(60);
  rectHighlight = color(60);
  rect2Color = color(10);
  TVoff = color(0);
  textAlign(CENTER, CENTER);
  textSize = 10;
}

void draw() {
  update(mouseX, mouseY);
  stroke(0);
  fill(180, 120, 60);
  rect(rectX, rectY, rectSize, rectSize);
  fill(rect2Color);
  rect(rect2X, rect2Y, rect2Size-35, rect2Size +35);
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(10);
  }
  rect(rect3X, rect3Y, rect3Size, rect3Size);
  textSize(textSize);
  text("OFF", rect3X+13.5, rect3Y-10);
  
  if (circleOver) {    
    fill(circleHighlight);
  } else {
    fill(10);
  }
  ellipse(circleX, circleY, circleSize, circleSize);
  textSize(textSize);
  text("ON", circleX, circleY -25);
  
  
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rect3X, rect3Y, rect3Size, rect3Size) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}
void mousePressed() {
  if (circleOver) {
      rect2Color = 255;
    }
  if (rectOver) {
      rect2Color = TVoff;
    }
  }

    
boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
