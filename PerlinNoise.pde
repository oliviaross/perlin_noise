float t = 0;
float u = 10000; 

void setup() {
  noStroke();
  background(0, 200, 0);
  size(600, 480);
}

void draw() {
 float n = noise(t);
 float m = noise(u);

 float x = map(n, 0, 1, 0, width);
 float y = map(m, 0, 1, 0, height);
 
 float c = map(x, 0, width, 0, 255);
 
 fill(c);
 ellipse(x, y, 10, 10);
 
 println(n);
 println(m);
 
 u += 0.01;
 t += 0.01;
}