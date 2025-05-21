int mode;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

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

float playerX, playerY, playerD, ballX, ballY, ballD, score, lives;
float ballSpeedX, ballSpeedY;

boolean leftKey, rightKey;

int[] x;
int[] y;

void setup () {
  size (800, 800, P2D);
  
  playerX = 400;
  playerY = 800;
  playerD = 100;
  
  ballX = 400;
  ballY = 600;
  ballD = 25;
  
  score = 0;
  lives = 3;
  
  ballSpeedX = 5;
  ballSpeedY = 5;
  
  mode = INTRO;
  
  //array of bricks
  x = new int[3];
  y = new int[3];
  
  x[0] = 100;
  y[0] = 100;
  
  x[1] = 400;
  y[1] = 100;
  
  x[2] = 700;
  y[2] = 100;
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
  }
}
