import processing.sound.*;
SoundFile kick;
SoundFile snare;

void setup() {  
  kick = new SoundFile(this, "kick.aif");
  snare = new SoundFile(this, "snare.aif");
}

void draw() {
}
int count = 4;
void keyPressed() {
  while(count > 0) { // this block repeats as long as the argument is true
    int tempo = 120; // tempo in BPM (beats per minute) - change it and see what happens
    int pulse = 60000 / tempo / 4; // duration of a 16th note, or 1/4 of the beat, in ms
    if (key == 32) { // space bar
      kick.play();
      delay(pulse * 4); // rhythms can now be written as multiples of the pulse value
      snare.play();
      delay(pulse * 4);
      kick.play();
      delay(pulse * 2);
      kick.play();
      delay(pulse * 2);
      snare.play();
      delay(pulse * 4);
      count--;
    }
  }
}

// EXERCISE: Make your rhythm repeat exactly 4 times.