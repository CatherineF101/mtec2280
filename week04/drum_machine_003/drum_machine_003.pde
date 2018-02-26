import processing.sound.*;
SoundFile kick;
SoundFile snare;

void setup() {  
  kick = new SoundFile(this, "kick.aif");
  snare = new SoundFile(this, "snare.aif");
}

void draw() {
}
int tempo = 250;
void keyPressed() {
  
  if (key == 32) { // space bar
    kick.play();
    delay(tempo); // wait 500ms (half a second) before playing the next sound
    snare.play();
    delay(tempo);
    kick.play();
    delay(tempo);
    kick.play();
    delay(tempo);
    snare.play();
     
  }
}

// EXERCISE 1: Program a rhythm of your own.
// EXERCISE 2: How can program the rhythm so it's easier to change the tempo?
// QUESTION: How can we make the pattern repeat?