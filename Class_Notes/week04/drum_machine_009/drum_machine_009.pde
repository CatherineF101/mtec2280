import processing.sound.*;
SoundFile kick;
SoundFile snare;
SoundFile hat;
SoundFile cymbal;
SoundFile clap;
SoundFile cowbell;
SoundFile maraca;
SoundFile tom;

void setup() {  
  kick = new SoundFile(this, "kick.aif");
  snare = new SoundFile(this, "snare.aif");
  hat = new SoundFile(this, "hat.aif");
  cymbal = new SoundFile(this, "cymbal.aif");
  clap = new SoundFile(this, "clap.aif");
  cowbell = new SoundFile(this, "cowbell.aif");
  maraca = new SoundFile(this, "maraca.aif");
  tom = new SoundFile(this, "tom.aif");
}

void draw() {
}

void keyPressed() {
  
  int tempo = 135; // BPM
  int pulse = 60000 / tempo / 4; //duration of a 16th note, or 1/4 of the beat, in ms
    
  if (key == 32) { // space bar
    for(int i = 0; i < 4*4*16; i++) {
      if(i % 3 == 0) { // play this block only on every 3rd pulse
        maraca.play();
        if(random(1) < .1) { // play the tom 10% of the time
          cymbal.play();
        }
      }
      if(i % 4 == 0) {
        if(random(1) < .5) { // flip a coin to decide between kick and clap
          kick.play();
        } else {
          snare.play();
          if(random(1) < .5) {
            clap.play();
          }
        }
      }
      if(i % 5 == 0 || i % 5 == 1) {
        hat.play();
      }
      if(i % 7 == 2 ) {
        tom.play();
      }
      delay(pulse);
    }
  }
}