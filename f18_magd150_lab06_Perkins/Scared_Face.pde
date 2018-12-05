class Scared_Face {
  float x = 0;
  float y = 0;
  float xSpeed = 2;
  float ySpeed = 1;
  
  void scaredFace() {
  fill(150, 200, 150);
  stroke(255);
  ellipse(x + 100,y + 100,100,100);
  fill(0);
  ellipse(x + 120, y + 80, 20, 20);
  ellipse(x + 80, y + 80, 20, 20);
  ellipse(x + 100, y + 120, 40, 30);
}
//This function will move the face around the screen.
void moveFace() {
  x = x + xSpeed;
  y = y + ySpeed;
}
//This function will make the face bounce off the walls.
void bounce() {
    if (x+150 > width || x+50 < 0) {
    xSpeed = xSpeed * -1;
  }
  if (y+150 > height || y+50 < 0) {
    ySpeed = ySpeed * -1;
  }
}
}
