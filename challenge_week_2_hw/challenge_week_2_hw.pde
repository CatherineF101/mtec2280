void setup () {
  size (1000,1000);
  background (0,0,255);
}

void draw (){
  stroke (0,235,0);
  line (mouseX,mouseY,640,360);



// circle drawing mode
  //ellipse(mouseX, mouseY,10,10);
  
 //where is my mouse?
 //println(mouseX, mouseY);
}

// if the mouse is clicked and dragged 
void mouseDragged() {
  // line drawing mode
  line(mouseX, mouseY, pmouseX, pmouseY);
}

// if a key is pressed
void keyPressed() {
  println(key);
  
  // if the key that is pressed is A then ...
  if(key == 'c') {
    //... set the stroke weight to 10
    strokeWeight(10);
    
    //sets the color of the line)
  stroke(205,204,299);
  }
  
  // if the key that is pressed is S then,
   if(key == 's') {
     
  //... set the stroke weight to 1   
  strokeWeight(1);
  
  //sets the color of the line)
  stroke(204,255,204);
  }
  
}