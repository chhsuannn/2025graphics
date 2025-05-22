// week14-1-PFont-createFont-textSize-text
size(300,300);
textSize(50);
text("Hello",10,50);//預設字型
PFont font = createFont("Times New Roman",50);
textFont(font);//change 字型
text("Hello",10,100);
//print(PFont.list());//print all style of 字型
for(String name : PFont.list()) println(name);
