//mkaing the variables 
PImage rock, paper, scissor;
int num, w, l, t;
String player, computer;
Boolean play = true;

void setup() {

  size(800, 800);
  rock = loadImage("r.png");//loading the image
  paper = loadImage("p.png");//loading the image
  scissor = loadImage("s.png");//loading the image
  background(255);
  fill(0);
  textSize(30);

}

void draw() {
  fill(0);
  textSize(30);
  //making the scoreBoard
  text("Won = " + w + " |", 200, 750);
  text("Lost = " + l + " |", 350, 750);
  text("Tied = " + t, 500, 750);

  textSize(65);
  text("Choose : ", 280, 70);
  //making the images appear on the screen
  image(rock, 50, 100, 200, 225);
  image(paper, 285, 100, 200, 225);
  image(scissor, 525, 100, 200, 225);
  
}

void mousePressed() {
  background(255);
  // Initialize player and computer
  player = "";
  computer = "";
  if (play == true) {
    // Determine player's choice based on mouse position
    if (mouseX > 50 && mouseX < 200 && mouseY > 100 && mouseY < 325) {
      player = "rock";
      image(rock, 80, 500, 200, 200);
    } else if (mouseX > 285 && mouseX < 485 && mouseY > 100 && mouseY < 325) {
      player = "paper";
      image(paper, 80, 500, 200, 200);
    } else if (mouseX > 525 && mouseX < 725 && mouseY > 100 && mouseY < 325) {
      player = "scissor";
      image(scissor, 80, 500, 200, 200);
    }

    // Generate computer's choice
    if (mouseX > 50 && mouseX < 200 && mouseY > 100 && mouseY < 325||mouseX > 285 && mouseX < 485 && mouseY > 100 && mouseY < 325||mouseX > 525 && mouseX < 725 && mouseY > 100 && mouseY < 325) {
      int num = int(random(1, 4));
      if (num == 1) {
        computer = "rock";
        image(rock, 480, 500, 200, 200);
      } else if (num == 2) {
        computer = "paper";
        image(paper, 480, 500, 200, 200);
      } else if (num == 3) {
        computer = "scissor";
        image(scissor, 480, 500, 200, 200);
      }

      // Compare player and computer choices and update scores
      if (player.equals(computer)) {
        t++;
        textSize(23);
        text(" It is a draw",300,600);
      } else if ((player.equals("rock") && computer.equals("scissor")) ||
        (player.equals("paper") && computer.equals("rock")) ||
        (player.equals("scissor") && computer.equals("paper"))) {
        w++;
        textSize(23);
        text("Player 1 won :)",300,600);
      } else {
        l++;
         textSize(23);
        text("computer won :(",300,600);
      }
    }
  }

//if the score reaches 3, stop the and display who won
    textSize(100);
    if (w==3) {
      fill(0);
      text("You win!!", 190, 450);
      play = false;
    }
    if (l==3) {
      fill(0);
      text("You lose!!", 150, 450);
      play = false;
    }
  
    
    // Print player and computer choices for debugging
    println("Player: " + player);
    println("Computer: " + computer);
    println("Tied: " + t);
    println("Won: " + w);
    println("Lost: " + l);
}
