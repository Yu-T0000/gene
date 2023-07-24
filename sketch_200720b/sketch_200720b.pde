/*
20200720
サウンドビジュアライザ
3Dモードでスフィアとボックスを並べ、音に合わせて大きさと色を変化させる。
使用素材：サイバー31 幻想花
配布元：魔王魂 https://maoudamashii.jokersounds.com
*/

import processing.sound.*;
SoundFile soundfile;
FFT fft;
int bands = 512;


void setup() {
 size( 600, 600, P3D);
 background(0);
 soundfile = new SoundFile(this, "bgm_maoudamashii_cyber31.mp3");
 soundfile.loop();

 fft = new FFT(this, bands);
 fft.input(soundfile);

}

void draw(){
   background(0);
    rotateY( radians(30) );
    for(int i=0;i<height/2;i+=60){
   sphere1(i+150,350);
    cube(i+150,500);   
    }
 
 
}
  


void sphere1(int y,int z) {
 fft.analyze();//FFTを実行
for (int i = 0; i<bands/3;i++){
float L = fft.spectrum[i];
noStroke();
fill(255,L*100,L*150,150);
pushMatrix();
translate(i*40,y,z);
sphere(L*50+3);
popMatrix();
}
}

void cube(int y,int z) {
 fft.analyze();//FFTを実行
for (int i = 0; i<bands/3;i++){
float L = fft.spectrum[i];
noStroke();
fill(L*100,L*200,255,200);
pushMatrix();
translate(i*40,y,z);
box(L*20+5);
popMatrix();
}
}
