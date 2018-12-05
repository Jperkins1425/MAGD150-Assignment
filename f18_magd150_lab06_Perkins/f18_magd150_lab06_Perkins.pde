//Creating the code that I made in the second tab
Scared_Face a;

void setup() {
  size(420, 420);
  a = new Scared_Face();
}
void draw() {
  background(32);
  a.scaredFace();
  a.moveFace();
  a.bounce();
}
 
