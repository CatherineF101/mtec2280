import processing.sound.*;
SoundFile kick;
SoundFile snare;
SoundFile hat;
SoundFile cymbal;

void setup() {  
  kick = new SoundFile(this, "kick.aif");
  snare = new SoundFile(this, "snare.aif");
  hat = new SoundFile(this, "hat.aif");
  cymbal = new SoundFile(this, "cymbal.aif");
}

void draw() {
}

void keyPressed() {
  
  int tempo = 150; // BPM
  int pulse = 60000 / tempo / 4; //duration of a 16th note, or 1/4 of the beat, in ms
    
  if (key == 32) { // space bar
    for(int i = 0; i < 4; i++) {
      if (i == 1) {
        cymbal.play();
      }
      for(int j = 0; j < int(random(1,10)); j++) { // use a random int to choose number of reps
        kick.play();
        hat.play();
        delay(pulse * int(random(1,3))); // use another random int to determine length of note
        if (j == 1) { // only play the second kick every other time
          kick.play();
        }
        delay(pulse * 2);
        snare.play();
        delay(pulse * 4);
        for(int k = 0; k < int(random(1,16)); k++) {
          hat.play();
          delay(pulse);
        }
      }
    }
    kick.play();
    cymbal.play();
  }
}