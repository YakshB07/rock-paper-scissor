PImage rock,paper,scissor;
int won,lost,draw, num;
String player,computer;
void setup(){
  background(225);
size(800,800);
rock = loadImage("r.png");
paper = loadImage("p.png");
scissor = loadImage("s.png");

}

void draw(){
 textSize(65);
 fill(0);
 text("Choose : ",280,70);
rect(50,100,150,225);
rect(285,100,200,225);
rect(525,100,200,225);
image(rock,50,100,200,225);
image(paper,285,100,200,225);
image(scissor,525,100,200,225);
}

void mousePressed(){
  num = int(random(1,4));
  if(num==1){
    computer = "rock";
  }
  if(num == 2){
    computer = "paper";
  }
  if(num == 3){
    computer = "scissor";
  }
  
if(mouseX>50&&mouseX<200&&mouseY>100&&mouseY<325){
  player = "rock";
}
if(mouseX>285&&mouseX<485&&mouseY>100&&mouseY<325){
  player = "paper";
}
if(mouseX>525&&mouseX<725&&mouseY>100&&mouseY<325){
  player = "scissor";
}
computer = "paper";
if(player.equals("rock")&&computer.equals("paper")){

image(rock,150,525,200,200);
image(paper,450,525,200,200);
}
println(player);
println(computer);
}
