int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int WIN = 4;

color white = #ffffff;
color black = #000000;
color grey = #7f7f7f;

color purple = #9b5de5;
color pink = #f15bb5;
color yellow = #fee440;
color blue = #00bbf9;
color teal = #00f5d4;

color peach = #f4978e;
color indigo = #5390d9;
color mint = #b8f2e6;

float brickX, brickY, brickD, playerX, playerY, playerD, ballX, ballY, ballD, score, lives;
float ballSpeedX, ballSpeedY;

boolean leftKey, rightKey;
boolean isPaused = false;

int[] x;
int[] y;
boolean [] alive;
int n;
int tempX, tempY;
int i = 0;
int timer;

void setup () {
  size (800, 800, P2D);
  
  playerX = 400;
  playerY = 800;
  playerD = 100;
  
  ballX = 400;
  ballY = 600;
  ballD = 25;
  
  score = 0;
  lives = 5;
  
  ballSpeedX = 0;
  ballSpeedY = 5;
  
  timer = 100;
  
  mode = INTRO;
  
  //array of bricks
  brickD = 75;
  n = 35;
  x = new int [n];
  y = new int [n];
  alive = new boolean[n];
  tempX = 100;
  tempY = 100;
  
  int i = 0;
  while (i < n) {
    x[i] = tempX;
    y[i] = tempY;
    alive [i] = true;
    tempX = tempX + 100;
    if (tempX == width) {
      tempX = 100;
      tempY = tempY + 100;
    }
   i++;
  }
  gameClicks ();
}

void draw () {
  if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game ();
  } else if (mode == PAUSE) {
    pause ();
  } else if (mode == GAMEOVER) {
    gameover ();
  } else if (mode == WIN) {
    win ();
  }
  }
