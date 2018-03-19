import processing.sound.*;
SoundFile kick;
SoundFile snare;

void setup() {  
  kick = new SoundFile(this, "kick.aif");
  snare = new SoundFile(this, "snare.aif");
}

void draw() {
}

void keyPressed() {
  
  int tempo = 120; // BPM
  int pulse = 60000 / tempo / 4; //duration of a 16th note, or 1/4 of the beat, in ms
    
  if (key == 32) { // space bar
    for(int i = 0; i < 4; i++) {
      for(int j = 0; j < 2; j++) { // this is a NESTED for loop
        kick.play();
        delay(pulse * 2);
        if (j == 1) { // only play the second kick every other time
          kick.play();
        }
        delay(pulse * 2);
        snare.play();
        delay(pulse * 4);
      }
    }
  }
}

// EXERCISE: Use nested loops and conditional logic to make a more complex rhythm.
// There are a few more sounds in the data folder: clap, cowbell, cymbal, hat, maraca, and tom
// source: http://smd-records.com/tr808/?page_id=14