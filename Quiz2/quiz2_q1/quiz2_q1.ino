//int blinkDelay = 500;

void setup() {
 pinMode(9, OUTPUT);
 //for(int i = 0; i < 500; i += 10) {
  
  // put your main code here, to run repeatedly:
digitalWrite(9, HIGH);
delay(500);
digitalWrite(9, LOW);
delay(500);

{
  // make console available
  // (hit the magnifying glass top right)
  Serial.begin(9600);

  // start random seed from static electricity
  randomSeed(analogRead(0));
}


  int rando = random(6);

  Serial.println(rando);

}

 


void loop() {

}
