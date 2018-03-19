
// create an array to store the digital pin
// info for 5 LEDs
int ledPin[] = {4, 6, 7, 8, 9, 13};
 
 
void setup() {
 
  // enable serial (like a console)
  Serial.begin(9600);
  // hello world! print out serial
  Serial.println("Serial Ready");
  
  // sets all LED pins to OUTPUT
  for (int i = 0; i < 6; i++) {
    pinMode(ledPin[i], OUTPUT);

    //generate a new random seed
    randomSeed(analogRead(3));

    // ...

    int rando = random(6);
    Serial.println(rando);
  }
}
 
void loop() {

  Serial.println(analogRead(1));

// sets all LED pins to OUTPUT
  for (int i = 0; i < 6; i++) {
    pinMode(ledPin[i], OUTPUT);
  }
  
  // turn them all off
    for (int i = 0; i < 6; i++) {
      digitalWrite(ledPin[i], LOW);
    
    }

    for (int i = 0; i < rando; i++) {
      pinMode(ledPin(i), HIGH);
    }
 
}

 
