float circleX = height/2;
float circleY = random (2, 600);
float xspeed = 2;
float yspeed = 1;    
int x = 280;
int y = 400; 
float gravity = 5;

void setup(){
size (640, 480);

}

void draw() {
 background (0,0,255);
 noStroke();
 
 Person();
 Environment ();
 Ball();

 
 stroke (50,255,0); //grass
 strokeWeight(150);
 line (0, 480, 640, 480);
 
}

void Person (){
fill(0); 
ellipse(mouseX, 350, 40, 40); // Head
rect (mouseX - 6, 350 , 13, 60, 40); 
rect (mouseX - 20, 370 , 40, 10, 10); 
rect (mouseX - 25, 330, 50, 10, 30); 
rect (mouseX - 20, 300, 40, 40, 10); //Hat
 
 fill (0, 140, 250); 
ellipse (mouseX - 7, 350, 5, 5);
ellipse (mouseX + 7, 350, 5, 5); // Eyes

fill (250, 0, 0);
rect (mouseX - 7, 360, 15, 5, 5); // Mouth
}

void Environment (){
fill(0, 250,255);
ellipse( x + 15, 70, 20, 20);
ellipse( x, 80, 20, 20);
ellipse( x + 30, 70, 20, 20);
ellipse( x, 100, 20, 20);
ellipse( x + 45, 80, 20, 20);
ellipse( x + 45, 100, 20, 20);
ellipse( x + 15, 110, 20, 20);
ellipse( x + 30, 110, 20, 20);
ellipse( x + 25, 90, 45, 45); //cloud

ellipse( x + 215, 70, 20, 20);
ellipse( x + 200, 80, 20, 20);
ellipse( x + 230, 70, 20, 20);
ellipse( x + 200, 100, 20, 20);
ellipse( x + 245, 80, 20, 20);
ellipse( x + 245, 100, 20, 20);
ellipse( x + 215, 110, 20, 20);
ellipse( x + 230, 110, 20, 20);
ellipse( x + 225, 90, 45, 45); //cloud

fill (250, 100, 0);
ellipse ( 5, 10, 250, 250);
fill (250, 250, 0);
ellipse ( 5, 10, 150, 150); 
fill (0, 0, 255);
ellipse (90, 90, 40, 40);
ellipse (110, 60, 40, 40);
ellipse (130, 30, 40, 40);
ellipse (60, 110, 40, 40);
ellipse (30, 130, 40, 40); // Sun
}

void Ball(){
 fill (0);
 ellipse(circleY,circleX,20,20);
 
     
if (circleX < 0){
xspeed *= -1;
}

if (circleY > width || circleY < 0){
yspeed *= -1;
}

if (circleX > 400 ){
 xspeed*= -1; 
}

circleX = circleX + xspeed;
circleY = circleY + yspeed;


}
