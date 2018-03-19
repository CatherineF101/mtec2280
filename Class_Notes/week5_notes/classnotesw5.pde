size(500,500);
colorMode(RGB,500);

//loop to the edge
for(int i = 0; i < width; i++) {
  line(i,0,i, height);
  //change color
  stroke(i,0,0);
  println(i);
}