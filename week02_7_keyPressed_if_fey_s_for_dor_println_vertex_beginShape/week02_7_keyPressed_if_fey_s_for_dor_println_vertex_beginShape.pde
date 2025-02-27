//week02_7_keyPressed_if_fey_s_for_dor_println_vertex_beginShape
ArrayList<Integer> x, y; //先有2個「還沒準備好」的(小的)資料結構，等mousePressed再新增準備
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>> (); //大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>> ();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("cute.png");
} //記得把圖檔，像上周一樣，拉到程式碼裡
void draw(){
  background(img);
  fill(255,200); //半透明的色彩 白色，alpha值是200
  rect(0, 0, 400, 400); //畫超大四邊形，全部蓋住
  //上面是 week02_4，下面用迴圈，從資料結構取出來
  for(int I=0;I<xx.size();I++){ //大寫I 對應大的資料結構
    ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
    ArrayList<Integer> y = yy.get(I);
    for(int i=1;i<x.size();i++){ // 小的，再照舊畫
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
    }
  }
}
void keyPressed(){ //注音輸入法會卡住，要換英文輸入
  if(key=='s' || key=='S'){
    for(int I=0;I<xx.size();I++){ //大寫I 對應大的資料結構
      ArrayList<Integer> x = xx.get(I); //取出裡面小的資料結構
      ArrayList<Integer> y = yy.get(I);
      println("beginShape();");
      for(int i=1;i<x.size();i++){ // 小的，再照舊畫
        println("  vertex(" + x.get(i) + "," + y.get(i) + ");" );
      } //改在 keyPressed() 按下 s 或 S時，再全部印!
      println("endShape();");
    }  
  }
}
void mouseDragged(){
  //println("vertex(" + mouseX + "," + mouseY + ");");
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時，建「新的」資料結構
  x = new ArrayList<Integer> ();  xx.add(x);
  y = new ArrayList<Integer> ();  yy.add(y);
}
