 PImage rock,paper,scissor;
int num, w,l,t;
String player,computer;

void setup(){
  background(225);
size(800,800);
rock = loadImage("r.png");
paper = loadImage("p.png");
scissor = loadImage("s.png");

}

void draw(){
     fill(0);
     textSize(40);
  text("Won = " + w + " |", 200, 750);
  text("Lost = " + l + " |", 350, 750);
  text("Tied = " + t, 500, 750);

  textSize(65);
  text("Choose : ", 280, 70);
  rect(50, 100, 150, 225);
  rect(285, 100, 200, 225);
  rect(525, 100, 200, 225);
  image(rock, 50, 100, 200, 225);
  image(paper, 285, 100, 200, 225);
  image(scissor, 525, 100, 200, 225);
}

void mousePressed() {
  background(255);
  // Initialize player and computer
  player = "";
  computer = "";
  
  // Determine player's choice based on mouse position
  if (mouseX > 50 && mouseX < 200 && mouseY > 100 && mouseY < 325) {
    player = "rock";
    image(rock, 150, 500, 200, 200);
  } else if (mouseX > 285 && mouseX < 485 && mouseY > 100 && mouseY < 325) {
    player = "paper";
    image(paper, 150, 500, 200, 200);
  } else if (mouseX > 525 && mouseX < 725 && mouseY > 100 && mouseY < 325) {
    player = "scissor";
    image(scissor, 150, 500, 200, 200);
  }
  
  // Generate computer's choice
  int num = int(random(1, 4));
  if (num == 1) {
    computer = "rock";
    image(rock, 450, 500, 200, 200);
  } else if (num == 2) {
    computer = "paper";
    image(paper, 450, 500, 200, 200);
  } else if (num == 3) {
    computer = "scissor";
    image(scissor, 450, 500, 200, 200);
  }
  
  // Compare player and computer choices and update scores
  if (player.equals(computer)) {
    t++;
  } else if ((player.equals("rock") && computer.equals("scissor")) || 
             (player.equals("paper") && computer.equals("rock")) || 
             (player.equals("scissor") && computer.equals("paper"))) {
    w++;
  } else {
    l++;
  }
  
  // Print player and computer choices for debugging
  println("Player: " + player);
  println("Computer: " + computer);
  println("Tied: " + t);
  println("Won: " + w);
  println("Lost: " + l);
}
