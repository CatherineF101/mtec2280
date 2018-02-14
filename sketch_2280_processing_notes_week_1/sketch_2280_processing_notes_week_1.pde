// the size of a function that creates a window
// that is width, height pixels big

size(500,500); // size of canvas

background(255,0,0); // Canvas backround color

noStroke(); // No stroke on shape 

rect(40,40,60,60); //position of rectangle on canvas starting (x,y) and the width and height

fill(70,0,100); // RBG color (red,green,blue)

stroke(255,255,255); // white outline on square
strokeWeight(5); // how many pixels wide your stroke is (stroke weight is always camel case)


rect(70,70,60,60); // position of rectangle on canvas starting (x,y) and the width and height

ellipse(0,0,100,100); // circle command. 0,0 is center last 2 numbers are diameter width and height

line(0,height, width,0); // draw line x1, y1, x2, y2