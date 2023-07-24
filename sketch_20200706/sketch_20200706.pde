/*
2020-07-06
前回習った関数を使い午前午後で色反転
時を表す円の中で分を表す円がグルグル
分を表す円の中で秒を表す円がグルグル
時を表す円は一時間ごとに増えていく
*/

void setup(){
  size(1000,800);
  noStroke();
  }
  
void draw (){
    //午前午後で色反転
    if(hour()<12){
    clock(255,0);
    }
    else{
    clock(0,255);
    }
  }
  
  void clock(int x,int y){
  int S = second();
  int M = minute();
  int H = hour();
  float S1 = S/60.0 * 360;
  float M1 = M/60.0 * 360;
  float M2x = 500+cos(radians(M1-90))*300;
  float M2y =400+sin(radians(M1-90))*300;
  
  background(x);
  stroke(y,noise( millis() * 0.001 ) * 200+50);
  for(int i = 0; i<H;i++){
  strokeWeight(7);
  noFill();
  ellipse(500,400,24*30-i*30,24*30-i*30);
  }
  stroke(x);
  strokeWeight(25);
  ellipse(M2x,M2y,90,90);
  noStroke();
  fill(y);
   for(int i = 0; i<60;i++){
  ellipse(M2x+cos(radians(i/60.0 * 360))*45,M2y+sin(radians(i/60.0 * 360))*45,2,2);
  }
  ellipse(M2x+cos(radians(S1-90))*45,M2y+sin(radians(S1-90))*45,25,25);
    if(S==0){
      fill(x,200);
    ellipse(M2x+cos(radians(S1-90))*45,M2y+sin(radians(S1-90))*45,10,10);
    }
  }
  
  
  
  
