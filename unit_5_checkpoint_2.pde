color white = #ffffff;
color black = #000000;

float ball1x, ball1y, ball1d, ball2x, ball2y, ball2d;
float vx, vy;
float ax, ay;

boolean wKey, aKey, sKey, dKey, upKey, downKey, leftKey, rightKey;

void setup () {
  size (600, 600, P2D);
  ball1x = width/2;
  ball1y = height/2;
  ball1d = 50;
  
  ball2x = width/2;
  ball2y = height/2;
  ball2d = 50;
  
  vx = 5;
  vy = 9;
  
  ax = 0;
  ay = 1;
  
}

void draw () {
  //background  (white);
  
  //player 1
  stroke(255, 255, 0);
  strokeWeight (3);
  fill (black);
  circle (ball1x, ball1y, ball1d);
  
  if (wKey) ball1y -= 5;
  if (sKey) ball1y +=  5;
  if (aKey) ball1x -= 5;
  if (dKey) ball1x += 5;
  
  //player 2
  stroke (0, 255, 255);
  strokeWeight (4);
  fill (black);
  circle (ball2x, ball2y, ball2d);
  
  // if (upKey) ball2y -= 5;
  //if (downKey) ball2y += 5;
  //if (leftKey) ball2x -= 5;
  //if (rightKey) ball2x += 5;
  
  ball1x += vx;
  ball1y += vy;
  
  //ball2x += vx;
  //ball2y += vy;
  
  //vx = vx + ax;
  //vy = vy + ay;
  
  //if (ball1y <= 0) {
  //  vy = vy*-0.95;
  //  ball1y = 0;
  //}
//  if (ball1y >= height) {
//    vy = vy*-0.95;
//    ball1y = height;
//}
//  if (ball1x <= 0) {
//    vx = vx*-0.95;
//    ball1x = 0;
//  }
//  if (ball1x >= width) {
//    vx = vx*-0.95;
//    ball1x = width;
//  }

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
  
  //if (keyCode == UP) upKey = true;
  //if (keyCode == DOWN) downKey = true;
  //if (keyCode == LEFT) leftKey = true;
  //if (keyCode == RIGHT) rightKey = true;
}

void keyReleased () {
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;
  
  //if (keyCode == UP) upKey = false;
  //if (keyCode == DOWN) downKey = false;
  //if (keyCode == LEFT) leftKey = false;
  //if (keyCode == RIGHT) rightKey = false;
}
