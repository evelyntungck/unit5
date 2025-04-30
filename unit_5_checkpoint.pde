color white = #ffffff;
color black = #000000;

float x, x2, y, y2, d, d2;

boolean wKey, aKey, sKey, dKey, upKey, downKey, leftKey, rightKey;

void setup() {
  size (600, 600, P2D);
  x = width/2;
  y = height/2;
  d = 100;
  x2 = width/2;
  y2 = height/2;
  d2 = 100;
}

void draw () {
  background  (white);
  
  //player 1
  stroke(125);
  fill (white);
  circle (x, y, d);
  
  if (wKey) y -= 5;
  if (sKey) y +=  5;
  if (aKey) x -= 5;
  if (dKey) x += 5;
  
  //player 2
  stroke (125);
  fill (white);
  circle (x2, y2, d2);
  
  if (upKey) y2 -= 5;
  if (downKey) y2 += 5;
  if (leftKey) x2 -= 5;
  if (rightKey) x2 += 5;
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
