import processing.sound.*;
SoundFile fail, success, music;

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

int p1score, p2score;

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
  
  //music.loop ();
}

void draw () {
  background (#939393);
  
  //player 1
  stroke (black);
  strokeWeight (3);
  fill (indigo);
  circle (playerX1, playerY1, playerD1);
  
  if (wKey) playerY1 -= 5;
  if (sKey) playerY1 +=  5;
  if (aKey) playerX1 -= 5;
  if (dKey) playerX1 += 5;
  
  //player 2
  stroke (black);
  strokeWeight (3);
  fill (pink);
  circle (playerX2, playerY2, playerD2);
  
  if (upKey) playerY2 -= 5;
  if (downKey) playerY2 +=  5;
  if (leftKey) playerX2 -= 5;
  if (rightKey) playerX2 += 5;
  
  //huge ball 1
  stroke(black);
  strokeWeight (3);
  fill (green);
  circle (ballX1, ballY1, ballD1);
  
  //huge ball 2
  stroke (black);
  strokeWeight (3);
  fill (green);
  circle (ballX2, ballY2, ballD2);
  
  
  if (dist(playerX1, playerY1, ballX1, ballY1) <=  playerD1/2 + ballD1/2) {
     p1score = p1score - 1;
  }
  
  if (dist(playerX2, playerY2, ballX2, ballY2) <=  playerD2/2 + ballD2/2) {
     p2score = p2score - 1;
  }

  //scoreboard
  stroke (black);
  strokeWeight (3);
  fill (yellow);
  rect (300, 0, 200, 100);
  line (400, 0, 400, 800);
  
  fill (0);
  textSize (30);
  textAlign (LEFT, LEFT);
  text (p1score, 350, 50);
  
  fill (0);
  textSize (30);
  textAlign (RIGHT, RIGHT);
  text (p2score, 450, 50);
  
  //huge ball movement
    ballY1 -= y;
    ballY2 -= y;
    
    if (ballY1 <= random (-50, -250)) {
      ballX1 = random (50, 350);
      ballY1 = random (950, 1200);
    }
    
    if (ballY2 <= random (-50, -250)) {
      ballX2 = random (450, 750);
      ballY2 = random (950, 1200);
    }
    
}

void keyPressed () {
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true;

  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased () {
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;

  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false;
}
  
