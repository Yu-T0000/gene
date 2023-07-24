void setup(){
  size(800,800,P3D);
  background(0);
  stroke(0,0);
  float xstart = random(10);
  float ynoise = random(10);
  translate(width/2,height/2,0);
  for(float y = -(height/3);y <= (height/3); y+=5){
    ynoise += 0.03;
    float xnoise = xstart;
    for(float x = -(width/6);x <= (width/6); x+=5){
      xnoise += 0.03;
      drawPoint(x,y, noise(xnoise, ynoise));
      float R = random(100);
      float G = random(255);
      fill(R+xnoise,G+ynoise,255,150);
    }
  }
}

void drawPoint(float x, float y, float noiseFactor){
  pushMatrix();
  translate(x * noiseFactor * 4, y * noiseFactor * 4. -y);
  float edgeSize = noiseFactor * 26;
  ellipse(0,0, edgeSize, edgeSize);
  popMatrix();
}
