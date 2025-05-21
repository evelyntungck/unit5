int mode;

final int INTRO = 0;
final int PLAYER1 = 1;
final int PLAYER2 = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

color white = #ffffff;
color black = #000000;

color teal = #83c5be;
color wildRose = #edafb8;
color matcha = #dde5b6;
color violet = #5e548e;
color lightBlue = #bde0fe;
color apricot = #ff9770;
color cyan = #63b0cd;
color grey = #9b9b93;

float playerX1, playerY1, playerD1, playerX2, playerY2, playerD2, cpuX, cpuY, cpuD, pongX, pongY, pongD;
float y, pongSpeedX, pongSpeedY;

boolean wKey, sKey, upKey, downKey, spaceBar;

boolean gameOver = false;
boolean paused = false;

int p1score, p2score, cpuScore;

void setup () {
  size (800, 800, P2D);
  background (white);
  
  playerX1 = 0;
  playerY1 = 400;
  playerD1 = 200;
  
  playerX2 = 800;
  playerY2 = 400;
  playerD2 = 200;
  
  cpuX = 800;
  cpuY = 400;
  cpuD = 200;
  
  pongX = 400;
  pongY = 400;
  pongD = 100;
  
  p1score = 0;
  p2score = 0;
  cpuScore = 0;
  
  pongSpeedX = -5;
  pongSpeedY = 0;

  y = 5;
  
  mode = INTRO;

}

void draw () {
  if (mode == INTRO) {
    intro ();
  } else if (mode == PLAYER1) {
    player1 ();
  } else if (mode == PLAYER2) {
    player2 ();
  } else if (mode == PAUSE) {
    pause ();
  }
}
