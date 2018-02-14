boolean gameStart = false;

float x = 150;
float y = 150;
float speedX = random(7, 7);
float speedY = random(7, 7);
int leftColor = #700000;
int rightColor = #700000;
int diam;
int rectSize = 100;
float diamHit;

void setup() {
  size(700, 500);
  noStroke();
  smooth();
  ellipseMode(CENTER);
}

void draw() { 
  background(0);
  
  line(340,0,340,500);
  line(0,250,700,250);
  if (mouseX < 100 && mouseY < 100)
  rect(0,0,340,250);
  else if (mouseX > 100 && mouseY > 100)
  rect(340,250,360,340);
 
  fill(#700000);
  diam = 17;
  ellipse(x, y, diam, diam);

  fill(leftColor);
  rect(0, 0, 20, height);
  fill(rightColor);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);


  if (gameStart) {

    x = x + speedX;
    y = y + speedY;

    // if ball hits movable bar, invert X direction and apply effects
    if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
      speedX = speedX * -1;
      x = x + speedX;
      rightColor = 0;
      fill(random(0,128),random(0,128),random(0,128));
      diamHit = random(75,150);
      ellipse(x,y,diamHit,diamHit);
      rectSize = rectSize-10;
      rectSize = constrain(rectSize, 10,150);      
    } 

    // if ball hits wall, change direction of X
    else if (x < 25) {
      speedX = speedX * -1.1;
      x = x + speedX;
      leftColor = 0;
    }

    else {     
      leftColor = #ffd700;
      rightColor = #ffd700;
    }
    // resets things if you lose
    if (x > width) { 
      gameStart = false;
      x = 150;
      y = 150; 
      speedX = random(7, 7);
      speedY = random(7, 7);
      rectSize = 150;
    }


    // if ball hits up or down, change direction of Y   
    if ( y > height || y < 0 ) {
      speedY = speedY * -1;
      y = y + speedY;
    }
  }
}
void mousePressed() {
  gameStart = !gameStart;
}


void keyPressed () {
  background (#670000);
}