import processing.sound.*;
SoundFile fail, success, music;

//mode variables
int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

color white = #ffffff;
color black = #000000;

color pink = #ff6698;
color orange = #ffb366;
color yellow = #ffff66;
color green = #98ff66;
color indigo = #6698ff;

float playerX1, playerY1, playerD1, playerX2, playerY2, playerD2, ballX1, ballY1, ballD1, ballX2, ballY2, ballD2;
float y;

boolean wKey, aKey, sKey, dKey, upKey, downKey, leftKey, rightKey;

int p1score, p2score, startTime;

int duration = 60000;

void setup () {
  size (800, 800, P2D);
  background (white);
  fail = new SoundFile (this, "FAILURE.wav");
  success = new SoundFile (this, "SUCCESS.wav");
  music = new SoundFile (this, "MUSIC.mp3");
  
  playerX1 = 200;
  playerY1 = 200;
  playerD1 = 100;
  
  playerX2 = 600;
  playerY2 = 200;
  playerD2 = 100;
  
  ballX1 = random (50, 350);
  ballY1 = random (900, 2000);
  ballD1 = 200;
  
  ballX2 = random (450, 750);
  ballY2 = random (900, 2000);
  ballD2 = 200;
  
  p1score = 0;
  p2score = 0;
  
  y = 5;
  
  startTime = millis ();

  mode = INTRO;
  
  //music.loop ();
}

void draw () {
  if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game ();
  } else if (mode == PAUSE) {
    pause ();
  }
}
