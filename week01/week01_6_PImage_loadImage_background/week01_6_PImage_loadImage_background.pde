// week01_6_PImage_loadImage_background
// 先用小畫家, 做出 400x400 的 cute.png
// 再從檔案總管, 把 cute.png 圖檔, 拉到程式裡
PImage img = loadImage("cute.png");
size(400,400); // size() 要與圖片大小相同
background(img); // 才能在背景顯示
