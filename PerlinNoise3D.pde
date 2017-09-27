int cols, rows;
int scl = 20;
int w = 2000;
int h = 1600;

float start;

float[][] terrain;

void setup(){
  size(600, 600, P3D);
  cols = w/scl; // cols = 2000/20
  rows = h/scl; // rows = 1600/20
  terrain = new float[cols][rows];
}


void draw(){
  float yoff = start;
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff += 0.2;
    }
    yoff += 0.2;
  } 
  
  background(0);
  stroke(255);
  noFill();
  
  translate(width/2, height/2);
  rotateX(PI/3);
  
  translate(-w/2, -h/2);
  
  for(int y = 0; y < rows - 1; y++) {
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < cols; x++) {
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
  
  start -= 0.1;
}