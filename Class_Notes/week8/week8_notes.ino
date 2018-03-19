void setup() {
  
  Serial.begin(9600);
  pinMode(8, OUTPUT);
  

}

void loop() {

  int val = analogRead(0);

  //map takes 5 arguments
  //the value you want to map
  //input minimum
  //input maximum
  //output minimum
  //output maximum
  int mappedVal = map(val, 0, 1023, 5000, 15000);


  //makes sounds
  digitalWrite(8, HIGH);
  delayMicroseconds(mappedVal);
  digitalWrite(8, LOW);
  delayMicroseconds(mappedVal);


  //print out useful diagnostic information
  //remember to comment out when you play sound for real
  //play sound for real, otherwise messes up sound by additional delay
  
  //Serial.print(mappedVal);
  //Serial.print(" , ");
  //Serial.println(val);

  //delay(40);
  


  

}
