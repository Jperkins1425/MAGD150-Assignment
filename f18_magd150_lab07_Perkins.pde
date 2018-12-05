//creating an array of 5 trees randomly placed through out the sketch
Tree[] trees = new Tree[5];
Cloud[] clouds = new Cloud[2];
Ball b;

void setup() {
  size(420,420);
  for(int i = 0; i<5; i++) {
    trees[i] = new Tree(10);
  }
  for(int i = 0; i<2; i++) {
    clouds[i] = new Cloud(10);
  }
  b = new Ball();
}
void draw() {
  background(255);
  fill(0, 50, 250);
  rect(0, 0, 420, 320);
  fill(0, 150, 0);
  noStroke();
  rect(0, 320, 420, 100);
  for(int i = 0; i<5; i++) {
    trees[i].display();
  }
  //starting the sun at coordinates of x = 0, y = 0, translating it make it move along
  //the x-axis by 70 and down the y-axis by 70.
  translate(70,70);
  noStroke();
  fill(250, 250, 0);
  ellipse(0, 0, 100, 100);
  for(int i = 0; i<2; i++) {
    clouds[i].show();
  }
  ellipse(210, 50, 70, 40);
  //Increasing the size of the circle by 0.5
  scale(0.5);
  ellipse(210, 150, 100, 50);
  b.Display();
  b.move();
  b.bounce();
  

}
