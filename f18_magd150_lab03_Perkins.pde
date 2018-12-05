boolean flipFlopper;


int red;
int green;
int blue;

float deltaMouseX;
float deltaMouseY;
float w = 30;
float h = 30;

void setup(){
  size(420, 420);
  surface.setResizable(true);
  background(32);
}

void draw(){
  
  stroke(red, blue, green);
  strokeWeight(5);
  red = (red + 31) % 256;
  green = (green + 25) % 256;
  blue = (blue + 15) % 256;
  fill(red, green, blue);
  
  frameRate(15);
  
  
  w = (w + 1) % (height / 3.5);
  h = (h + 1) % (height / 3.5);

  ellipse(mouseX, mouseY, w, h);
  
  stroke(red, green);
  strokeWeight(7);
 
  ellipse(mouseX, mouseY, w/2, h/2);
  
  stroke(blue, green);
  strokeWeight(4);
  
  ellipse(mouseX, mouseY, w/7, h/7);


  deltaMouseX = mouseX - pmouseX;
  deltaMouseY = mouseY - pmouseY;
 
strokeWeight(2);
stroke(255, 0, 0);
line(0.5, 0.5, width, height);
stroke(0, 255, 0);
line(0, 210, width /2, height);
stroke(0, 0, 255);
line(210, 0, 420, 210);

println("BUBBLES!");
println("The height is " + height);
println("The width is " + width);
println("The center is (" + width/2.0 +", " + height/2.0 +")");
println(50 % 15);
//what is 25 * 1* 14
println(25 * 1 * 14);
//what is the square root of 350
println("The square root of 350 is " + sqrt(350.0));
//what is (350 + 18.71)/3
println((350 + 18.71)/3.0);
println((25*1)-(350)* (-10));
println("max: " + max(1, 30, 55));
println("min: " + min(100, -15, -22));
println("norm: " + norm(100, 15, 500));
println("constrain 2525: " + constrain(2525, 0, height));







}
