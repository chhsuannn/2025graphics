//week02_5a_combine_02_4_and_)2_3_bad
//要描圖，卻出錯
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png");
} //記得把圖檔，像上周一樣，拉到程式碼裡
void draw(){
  background(img);
  fill(255,200); //半透明的色彩 白色，alpha值是128
  rect(0, 0, 400, 400);
  //上面是 week02_4，下面是 week02_3，但線卻無法畫上去
  stroke(255,0,0); //紅色的線
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
