Spot[] sp = new Spot[50];//宣言「int x;」は「int型の"x"を作るよ」 なのでこれは「Spot型の"sp"を作るよ」

void setup(){
size(600,600);
noStroke();
for(int i = 0; i<50;i++){
sp[i] = new Spot(i*20,200,60-i,i);//Spot型の新しいオブジェクトspを作る
}
}

void draw(){
  background(0);
  for(int i = 0; i<50;i++){
    sp[i].move();//spから引っ張ってきたmove()
    sp[i].display();//オブジェクトspのメソッドdisplay()を実行して円をかく
  }
}

//Spot型について

class Spot { //Spotクラス
float x,y,diameter,sp;//Spotクラスで扱う変数たち。円の要素 座標&直径のこと
 Spot(float X,float Y,float D,float S){
 x = X;
 y = Y;
 diameter = D;
 sp = S;
 }
 void move(){//メソッドmove
 if(mousePressed){
 y-=2+sp*0.1;}
 }
 
void display(){//円を描くメソッドdisplay()
ellipse(x,y,diameter,diameter);
}
}
