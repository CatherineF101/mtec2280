void setup(){ //question1
  
size(500, 500);
  
frameRate(5);
}

void draw(){
 
  fill(0);
  rect(0 , 0, width/2, height);
  fill(230,255, 0);
  noStroke();
  rect(width/2, 0 , width/2, height);
  
  println(100);
}