float x = 0;
float y = 0;

void setup() {
  size(900, 900);
  background(0);
  x = width/2;
  y = height/2;
}

void draw() {
    for (int i = 0; i < 100; i++) {
  strokeWeight(1);
  float px = map(x, -2.1820, 2.6558, 0, width);
  float py = map(y, 0, 9.9983, height, 0);
  point(px, py);
  fern();
  }
}

void fern() {
  float r = random(1);
  float nextX = 0;
  float nextY = 0;
  if (r < 0.01) {
    stroke(255, 0, 0);
    nextX += 0 * x + 0 * y;
    nextY += 0 * x + 0.16 * y;
  } else if (r < 0.85) {
    stroke(0, 255, 0);
    nextX += 0.85 * x + 0.04 * y;
    nextY += -0.04 * x + 0.85 * y + 1.6;
  } else if (r < 0.92) {
    stroke(0, 0, 255);
    nextX += 0.2 * x + -0.26 * y;
    nextY += 0.23 * x + 0.22 * y + 1.6;
  } else {
    stroke(255, 255, 0);
    nextX += -0.15 * x + 0.28 * y;
    nextY += 0.26 * x + 0.24 * y + 0.44;
  }
  
  x = nextX;
  y = nextY;
}
