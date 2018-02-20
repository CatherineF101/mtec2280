
//q4


float x, y, red, green, blue;

void setup(){
  size(500, 500);
  x = width;
  y = height;
  blue = 100;
  red = 100;
  green = 100;
  
  background(0);
  
  noStroke();
}

void draw(){
  
}

void keyPressed(){
  println(key);
  
 
  if(key == 'x'){
    x = random(width);
    y = random(height);
    
    green = random(100);//rgb
    red = random(100);
    blue = random(100);
    //
    
        fill(red, green,blue);
        ellipse(x, y, 15, 15); //size
  } 

  else if( key == 'b'){
    red = random(100); //randome positions
    green = random(100);
    blue = random(100);
    background(green, red, blue);
  }
}