   
int x = 280;
int y = 400; 
int score = 0;   
int Circle = 5;

PVector[] Location = new PVector[Circle];
PVector[] Velocity = new PVector[Circle];
float gravity = 0.05;

void setup(){
size (640, 480);
for(int i=0;i<Location.length; i++){
Location[i] = new PVector (random(2), 10);
Velocity[i] = new PVector (random(1.15, 2), random(0.2, 1.2));

  }
}


void draw() {
  
  for(int i = 50; i < height; i = i + 4) {
   stroke (100, i, 255);
    line(0,i,width,i); // background
 }
 noStroke ();
  
 Person();
 Environment ();
 Basket();
 Ball();

fill (6);
textSize(15);
text("$ " + score, 550, 30); //Scoring 
}


void Environment (){
fill(0, 0,255);
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
 // Sun
 
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


void Ball(){
  noStroke();
  
 // Parameters
 for(int i=0; i<Location.length;i++){
    if(Location[i].x > width || Location[i].x< 0){
      Velocity[i].x *=-1;
    }
    if(Location[i].y > 400 || Location[i].y < 0){
      Velocity[i].y *=-1;
    }
    
    fill (0, 90);
    ellipse(Location[i].x,Location[i].y,20,20);
    Location[i].add(Velocity[i]);
    Velocity[i].y = Velocity[i].y + gravity;
 
  if(dist(Location[i].x, Location[i].y, mouseX, 330) <= 30){ // when the ball hits the hat
  
  Velocity[i].y *=-1;
  Velocity[i].y ++;
}

if(Location[i].x > 550  && Location[i].y > 340){
 fill (0, 0, 0, 0);   
  Location[i].y =random(5) ;
  Location[i].x = random(5); 
  Velocity[i].y =1;
  Velocity[i].x=1;  
  score = score +6; // When ball hits the basket

}
    if(Location[i].y > 400 && Location[i].x < 550) { //when the ball hits the ground
      background(255, 0, 0);
      textSize(20);
      String s = "Click mouse to restart";
      fill (0);
      textAlign (CENTER,CENTER); 
      text (s, width/2, height/2);
      noLoop ();
    }
  }
}

void mousePressed() {
      loop(); }
   
 void Basket(){
  noStroke();
  fill(100, 50, 0);
  rect(550,340,100,70);
 }
 
