// store pong all coordinates
// as global variables

float x;

float y;

float xSpeed;

float ySpeed;

void setup(){

size(500,500);

x = width/2;
y = height/2;

xSpeed = random(2,5);
ySpeed = random(2,5);

}

void draw(){
  background(0);
  
  // change the x position
x = x + xSpeed;

y = y + ySpeed;

  //Did we hit the right sidez/
  if ( x >= width) {
    //collision;
    xSpeed = -xSpeed;
 
    
    println("|");
  }
  
  if ( x <= 0) {
    //collision 
    xSpeed = -xSpeed;
  } 
  
  if (y >= height) {
    
    ySpeed = -ySpeed;
    
  }
  
  if (y <= 0) {
    //collision
    
    ySpeed = -ySpeed;
    
  }
  
ellipse(x,y,20,20);
}