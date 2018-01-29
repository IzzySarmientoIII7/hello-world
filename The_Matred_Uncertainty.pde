Spot[] spots; // Declare array
float x, y = 100;
float dim = 80.0;


void setup() {
  size(700, 500);
  y = height * 0.5;
  int numSpots = 1; // Number of objects
  int dia = 3/numSpots; // Calculate diameter
  spots = new Spot[700]; // Create array
  for (int i = 0; i < spots.length; i++) {
    float x = dia/2 + i*dia;
    float rate = (1);
    // Create each object
    spots[i] = new Spot(x, 1, dia, 2.5); 
  }
  stroke(#670000);
}
 void keyPressed () {
    background (random(255));
  }
  
void draw() {
  fill(#670000);
line(340,0,340,500);
line(0,250,700,250);
if (mouseX < 100 && mouseY < 100)
rect(0,0,340,250);
else if (mouseX > 100 && mouseY < 100)
rect(340,0,500,250);
else if (mouseX < 100 && mouseY > 100)
rect(0,250,340,340);
else if (mouseX > 100 && mouseY > 100)
rect(340,250,360,340);

if (mousePressed == true)
fill(255);
ellipse(mouseX, mouseY, 70, 70);
  line (0, y, width, y); 
  y = y - 1;
  if (y < 0)
  y = height;
  fill(0, 7);
  rect(0, 0, width, height);
  fill(255);
  for (int i=0; i < spots.length; i++) {
    spots[i].move(); // Move each object
    spots[i].display(); // Display each object
  }
}
class Spot {
  float x, y;         // X-coordinate, y-coordinate
  float diameter;     // Diameter of the circle
  float speed;        // Distance moved each frame
  int direction = 1;  // Direction of motion (1 is down, -1 is up)
  
  // Constructor
  Spot(float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }
    
  void move() {
    y += (speed * direction); 
    if ((y > (height - diameter/2)) || (y < diameter/2)) { 
      direction *= -1; 
      if (mousePressed) {
        fill(0);
      } else {
        fill(#670000);
      }
    } 
  }
  
  void display() {
     if (mousePressed) {
      fill(0);
    } else {
      fill(255);
    }
    ellipse(x, y, diameter, diameter);
  }
}