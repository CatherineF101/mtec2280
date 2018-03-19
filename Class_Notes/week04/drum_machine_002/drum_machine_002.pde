import processing.sound.*;
SoundFile kick;
SoundFile snare;
boolean kickFlag = true; // flag to alternate between kick and snare - true for kick or false for snare

void setup() {  
  kick = new SoundFile(this, "kick.aif");
  snare = new SoundFile(this, "snare.aif");
}

void draw() {
}

void keyPressed() {
  
  if (key == 32) { // space bar
    if (kickFlag) { // use the flag to choose one sound or the other
      kick.play();
      kickFlag = false; // set the flag to false so next sound will be snare
    } else {
      snare.play();
      kickFlag = true; // set the flag to true so next sound will be kick
    }
  }
}

// QUESTION: What do we need in order to program a rhythm?