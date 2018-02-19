size(500,500); //size of the window
  
  background(150,100,220); //color window
  
  strokeWeight(4); //line thickness
  
  
  
}

void draw(){ // used to help make objects 
  
  
  //ellipse(mouseX,mouseY,30,30);
  
  //line(mouseX,mouseY,pmouseX,pmouseY);
  
  
  println(mouseX,mouseY);
  //helps you see where your mouse is at
}

void mouseDragged(){
  
  line(mouseX,mouseY,pmouseX,pmouseY);
}

void keyPressed(){
  
  println(key);
  
  //strokeWeight(3);
  if (key == 'a'){
    strokeWeight(10);
    stroke(120,70,220);
  }
    if (key == 'a'){

    stroke(0,70,225);
  }
  
  if (key == 'g'){
    strokeWeight(1);
  }
  
 if (key == 'l'){
   
   stroke(155,230,255);
 }
}
