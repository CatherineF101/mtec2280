//i = i - 100
//i %= 100

int speakerPin = 8;

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:
for(int i = 10000; i > 1000; i -=100) {
  digitalWrite(speakerPin, HIGH);
  delayMicroseconds(i);
  digitalWrite(speakerPin, LOW);
  delayMicroseconds(i);
}
}
