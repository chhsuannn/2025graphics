// week12_1_gundam_head_body_uparm_upuparm_hand
// 修改自 week09_5_gundam_uparm_upuparm_hand_keyboard_mouse_angle
// 修改自 week09_2_gundam_head_body_push_trt_pop
// 要記得把檔案拉進來
// Ctrl-k 開啟檔案總管 把week09_5的模型copy到week12_1
// 再把 week09_5 的左邊一堆push trt pop貼到後面 mouse亂轉
PShape body, head;
PShape uparm1, upuparm1,hand1;
void setup(){
  size(400,400,P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
void draw(){
  background(204);
  translate(200,300);
  sphere(10); //原點的球
  
  scale(10,-10,10);
  
  shape(body,0,0);
  pushMatrix();
    translate(0,22.5);
    rotateY(radians(mouseX-200));
    rotateX(radians(mouseY-60));
    translate(0,-22.5);
    shape(head,0,0);
  popMatrix();
  
  pushMatrix();
   shape(upuparm1,0,0); //上上手臂
    pushMatrix();
    translate(-4.1,19.9); //再掛回去原本的位置
    rotateZ(radians(mouseX));
    translate(4.1,-19.9); // 把物體的旋轉中心，放到座標中心
    shape(uparm1,0,0); //上手臂
    pushMatrix();
      translate(-4.5, 16.9);
      rotateX(radians(mouseX));
      translate(4.5, -16.9);
      //translate(mouseX/10.0, -mouseY/10.0);  //一邊移動、一邊找數值
      //println(mouseX/10.0, -mouseY/10.0); //印出適合的數值 ex. 4.5, -16.9    
      shape(hand1,0,0);
        popMatrix();
      popMatrix();
    popMatrix();
}
