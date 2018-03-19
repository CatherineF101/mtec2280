
//Create an ambulance sound


int speakerPin = 6;

void setup() {
  pinMode(speakerPin, OUTPUT);
}

void loop() {

  for(int i = 6000; i > 1000; i -= 30) {
    digitalWrite(speakerPin, HIGH);
    delayMicroseconds(i);
    digitalWrite(speakerPin, LOW);
    delayMicroseconds(i);
    digitalWrite(speakerPin, HIGH);
    delayMicroseconds(i);
  }

  // pause in siren
  delay(50);

}
