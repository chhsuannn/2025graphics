//week12_7_sound_intro_ingame_sword_monkey
import processing.sound.*;
SoundFile sndInGame, sndIntro, sndMonkey, sndSword;
void setup(){
  size(400,400);
  sndInGame = new SoundFile(this, "In Game Music.mp3");
  sndIntro = new SoundFile(this, "Intro Song_Final.mp3");
  sndMonkey = new SoundFile(this, "Monkey 1.mp3");
  sndSword = new SoundFile(this, "sword slash.mp3");
  sndInGame.play(); // 開場簡介的音樂
}
boolean playingIntro = true;
void keyPressed(){  ///按下空白鍵，會進入遊戲音樂
  if(playingIntro){ //本來在播「開場簡介」
    sndIntro.stop(); //開場簡介的音樂 stop
    sndInGame.play(); //進入遊戲關卡的音樂 play
    playingIntro = false;
  }
  else{ //若沒播「開場簡介」
    sndInGame.stop(); 
    sndIntro.play();
    playingIntro = true;
  }
}
void mousePressed(){
  if(mouseButton==LEFT) sndSword.play();
  if(mouseButton==RIGHT) sndMonkey.play();
}
void draw(){ //一定要記得加 void draw()　才會正確更新程式 60 fps

}
