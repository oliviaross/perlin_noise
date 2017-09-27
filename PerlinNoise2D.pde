void setup() {
  size(600, 480);
}

void draw() {
  loadPixels();
  float xoff = 0.0;
  
  for (int x = 0; x < width; x++) {
    xoff += 0.2;
    float yoff = 0.0;
    
   for (int y = 0; y < height; y++) {
     yoff += 0.2;
     
     float bright = noise(xoff, yoff)*255;
     //float bright = random(255);
     pixels[x + y * width] = color(bright);
   } 
  }
  
  updatePixels();
}