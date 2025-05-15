//week13_1_processing_video
// Sketch - Library - Msnage Libraries.. 安裝
// 教學在 https://processing.org/tutorials/video
import processing.video.*; //Java使用外掛的「
//Capture video; //有視訊鏡頭的，用這個版本
Movie movie; //沒有鏡頭，改用這個
void setup(){
  size(640, 480); //常見的視訊
  //video = new Capture(this, 640, 480);
  //video.start(); //打開視訊
  movie = new Movie(this, "street.mov"); //讀檔
  movie.loop();
}
void draw(){
  //if(video.available()) video.read(); //若沒有視訊鏡頭，就註解掉，就不出錯
  //image(video, 0, 480); //若沒有視訊鏡頭，就註解掉，就不出錯
  if(movie.available()) movie.read();
  image(movie, 0, 0);
}
