import processing.sound.*;
SoundFile fail, success, music;

color white = #ffffff;
color black = #000000;

float ball1x, ball1y, ball1d, ball2x, ball2y, ball2d, ballX, ballY, ballD;
float vx, vy;
float ax, ay;

boolean wKey, aKey, sKey, dKey, upKey, downKey, leftKey, rightKey;

int p1score;

void setup () {
  size (600, 600, P2D);
  fail = new SoundFile (this, "FAILURE.wav");
  music = new SoundFile (this, "MUSIC.mp3");
  ball1x = 50;
  ball1y = 50;
  ball1d = 50;

  ball2x = width/2;
  ball2y = height/2;
  ball2d = 75;
  
  ballX = width/2;
  ballY = height/2;
  ballD = 200;

  vx = 5;
  vy = 9;

  ax = 0;
  ay = 1;
  
  p1score = 0;
  
  music.loop ();
}

void draw () {
  
  background  (white);

  //player 1
  stroke(255, 255, 0);
  strokeWeight (3);
  fill (black);
  circle (ball1x, ball1y, ball1d);
  
  fill (255, 0, 0);
  textSize (40);
  textAlign (CENTER, CENTER);
  text (p1score, width/2, height/2);

  //player 2
  stroke (0, 255, 255);
  strokeWeight (4);
  fill (black);
  circle (ball2x, ball2y, ball2d);

  if (upKey) ball2y -= 5;
  if (downKey) ball2y += 5;
  if (leftKey) ball2x -= 5;
  if (rightKey) ball2x += 5;
  
  //huge ball
  stroke(255, 0, 255);
  strokeWeight (6);
  fill (white);
  circle (ballX, ballY, ballD);
  
  if (wKey) ballY -= 5;
  if (sKey) ballY +=  5;
  if (aKey) ballX -= 5;
  if (dKey) ballX += 5;

  if (dist(ball1x, ball1y, ballX, ballY) <=  ball1d/2 + ballD/2) {
    vx = (ballX - ball1x)/5;
    vy = (ballY - ball1y)/5;
  }
  
  if (dist(ball2x, ball2y, ballX, ballY) <=  ball2d/2 + ballD/2) {
    vx = (ballX - ball2x)/5;
    vy = (ballY - ball2y)/5;
  }
  
  //net
  stroke (0);
  strokeWeight (5);
  fill (white);
  circle (width/2, height/2, 100);
  
  if (dist(width/2, height/2, ballX, ballY) <= 100 + ballD/2) {
    p1score = p1score + 1;
    ballX = width/2;
    ballY = height/2;
  }


  ball1x += vx;
  ball1y += vy;

  ball2x += vx;
  ball2y += vy;

  vx = vx + ax;
  vy = vy + ay;

  if (ball1y <= 0) {
    vy = vy*-0.95;
    ball1y = 0;
  }
    if (ball1y >= height) {
      vy = vy*-0.95;
      ball1y = height;
  }
    if (ball1x <= 0) {
      vx = vx*-0.95;
      ball1x = 0;
    }
    if (ball1x >= width) {
      vx = vx*-0.95;
      ball1x = width;
    }

  //if (ball2y <= 0) {
  //    vy = vy*-0.95;
  //    ball2y = 0;
  //  }
  //  if (ball2y >= height) {
  //    vy = vy*-0.95;
  //    ball2y = height;
  //}
  //  if (ball2x <= 0) {
  //    vx = vx*-0.95;
  //    ball2x = 0;
  //  }
  //  if (ball2x >= width) {
  //    vx = vx*-0.95;
  //    ball2x = width;
  //  }
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
