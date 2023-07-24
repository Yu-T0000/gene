PImage Tree;
PImage B;
PImage P;
PImage V;
PImage Y;


void setup(){
  size(800,800);
imageMode(CENTER);
Tree = loadImage("tree.png");
B = loadImage("flower_blue.png");
P = loadImage("flower_pink.png");
V = loadImage("flower_violet.png");
Y = loadImage("flower_yellow.png");
}

void draw(){
}

void keyPressed(){
  float x = mouseX;  
  float y = mouseY;
  noStroke();
  
  //背景を昼に
  if (key=='d'){
    background(191,242,227);
    for(int i=0;i<height;i++){
      for ( int j = 0; j<width; j++) {
      fill(0,106,170,500-i);
     rect(j,i,1,1);}
    }
     fill(112,113,101);
    rect(0,700,800,100);
  image( Tree, 400,400,500,800);
  }
  
  //背景を夕方に
  if (key=='e'){
    background(255,235,134);
    for(int i=0;i<height;i++){
      for ( int j = 0; j<width; j++) {
      fill(155,31,120,500-i);
     rect(j,i,1,1);}
    }
     fill(124,107,74);
    rect(0,700,800,100);
  image( Tree, 400,400,500,800);
  }
  
   //背景を夜に
  if (key=='n'){
     background(31,116,155);
    for(int i=0;i<height;i++){
      for ( int j = 0; j<width; j++) {
      fill(6,5,88,500-i);
     rect(j,i,1,1);}    
    }
     fill(75,75,40);
    rect(0,700,800,100);
  image( Tree, 400,400,500,800);
  }
  
  //青い花を咲かせる
  if (key=='b'){
    if(mousePressed){
    image(B,x,y,40,40);}
  }
  
  //ピンクの花を咲かせる
  if (key=='p'){
    if(mousePressed){
    image(P,x,y,40,40);}
  }
  
  //紫の花を咲かせる
  if (key=='v'){
    if(mousePressed){
    image(V,x,y,40,40);}
  }
  
  //黄色い花を咲かせる
  if (key=='y'){
    if(mousePressed){
    image(Y,x,y,40,40);}
  }
  
  //葉っぱ
  if (key=='g'){
    if(mousePressed){
      fill(19,214,121,50);
    rect(x,y,20,20);}
  }
  
  //葉っぱ2
  if (key=='l'){
    if(mousePressed){
      fill(9,113,83,50);
    rect(x,y,25,25);}
  }
  
   //葉っぱ3(陰用)
  if (key=='f'){
    if(mousePressed){
      fill(3,68,70,80);
    triangle(x,y,x-20,y+30,x+30,y+20);}
  }
   //葉っぱ4(ハイライト)
  if (key=='h'){
    if(mousePressed){
      fill(188,255,142,100);
    triangle(x,y,x-10,y+20,x+20,y+10);}
  }
   //星
  if (key=='s'){
    if(mousePressed){
      fill(255,180);
    ellipse(x,y,3,3);}
  }
}
