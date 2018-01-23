Spot[] spots; // Declare array
void setup() {
  size(700, 500);
  int numSpots = 20; // Number of objects
  int dia = 70/numSpots; // Calculate diameter
  spots = new Spot[700]; // Create array
  for (int i = 0; i < spots.length; i++) {
    float x = dia/2 + i*dia;
    float rate = random(0.1, 2);
    // Create each object
    spots[i] = new Spot(x, 1.5, dia, rate);
  }
  stroke(0,153,76);
}
 void keyPressed () {
    background (random(255));
  }
  
void draw() {
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
        fill(0,153,76);
      }
      ellipse(mouseX, mouseY, 70, 70);
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