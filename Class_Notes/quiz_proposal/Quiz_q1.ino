// Make each light blink one after the other

int led1 = 6;
int led2 = 8;
int led3 = 9;

void setup() {
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
}

void loop() {

    digitalWrite(led1, HIGH);
    digitalWrite(led2, LOW);
    digitalWrite(led3, LOW);
    delayMicroseconds(300);
    digitalWrite(led1, LOW);
    digitalWrite(led2, HIGH);
    digitalWrite(led3, LOW);
    delayMicroseconds(300);
    digitalWrite(led1, LOW);
    digitalWrite(led2, LOW);
    digitalWrite(Led3, HIGH);
    
}

