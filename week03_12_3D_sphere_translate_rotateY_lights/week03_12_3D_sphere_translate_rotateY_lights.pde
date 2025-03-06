//week03_12_3D_sphere_translate_rotateY_lights
void setup(){
  size(400,400,P3D); //開啟3D模式
}
void draw(){
  background(128); //灰色背景
  lights(); //加上打光
  translate(mouseX,mouseY);
  rotateY(radians(frameCount)); 
  sphere(200);
}
