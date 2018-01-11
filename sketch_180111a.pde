void setup(){
size(400,200);
}
void draw(){
size(400,200);
background(219,27,65);
strokeWeight(10);
//stroke(200,100,10);
//fill(0);
line(0,0,400,200);
triangle(200,0,0,200,400,200);
quad(10,10,20,150,250,150,200,20);
//stroke(0);
//fill(20);
rectMode(CENTER);
rect(150,90,20,20);
//stroke(0);
//fill(20);
ellipse(100,150,100,50);
arc(70,70,80,80,0,PI+QUARTER_PI,PIE);
}