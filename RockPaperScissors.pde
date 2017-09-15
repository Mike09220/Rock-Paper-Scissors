Button player1Rock;
Button player1Paper; //initialise classes
Button player1Scissors;
Button player2Rock;
Button player2Paper;
Button player2Scissors;
Button singlePlayer;
Button multiPlayer;

int player1Choice;      //varibales for player choices, win counts and multiplayer and single player options
int player2Choice;
int player1WinCount;
int player2WinCount;
boolean singlePlayerMode = true;
boolean multiPlayerMode = false;
String computerChoice = "None";



void setup(){
  
  size(1000, 500);
  
  player1Rock = new Button(145, 100, 200, 75, color(255, 160, 0), "Rock");  //contructers for button classes throughout the dropgram
  player1Paper = new Button(145, 200, 200, 75, color(255, 160, 0), "Paper");
  player1Scissors = new Button(145, 300, 200, 75, color(255, 160, 0), "Scissors");
  player2Rock = new Button(655, 100, 200, 75, color(255, 160, 0), "Rock");
  player2Paper = new Button(655, 200, 200, 75, color(255, 160, 0), "Paper");
  player2Scissors = new Button(655, 300, 200, 75, color(255, 160, 0), "Scissors");
  
  singlePlayer = new Button(300, 400, 100, 75, color(255, 160, 0), "Single");
  multiPlayer = new Button(600, 400, 100, 75, color(255, 160, 0), "Multi");
}

void draw(){
  
  background(100, 50, 200);
  
  rect(495, 0, 20, 500); // creates a line down the middle of the screen to seperare the two players
  
  text("Player 1", 245, 50); //player one title

  
  text("Wins", 50, 400);  //text for player 1 wins
  
  text(player1WinCount, 50, 450); 
 
  
  singlePlayer.display(); //calls the display function from the button classes for various instances
  multiPlayer.display();
  
  player1Rock.display();
  player1Paper.display();
  player1Scissors.display();
  
  
 if (singlePlayerMode == true && multiPlayerMode == false){  //if statement for single player mode
   
   text("Computer", 755, 50);
   text("Wins", 950, 400);
   text(player2WinCount, 950, 450);
   text("Computer Selection", 755, 137.5);
   text(computerChoice, 755, 200);
   
      
 }
  
  
 if (singlePlayerMode == false && multiPlayerMode == true){  //if statenebt for multi player mode
 
  text("Player 2", 755, 50);  //text for player 2
  text("Wins", 950, 400);
  text(player2WinCount, 950, 450); 
 
  player2Rock.display();  //calling display fucntion
  player2Paper.display();
  player2Scissors.display();
  
 }
 
   if (player2Choice == 1 && singlePlayerMode == true && multiPlayerMode == false){ // if statements for  display of computer's choice
   
    computerChoice = "Rock"; 
    
  }
  
  if (player2Choice == 2 && singlePlayerMode == true && multiPlayerMode == false){
   
    computerChoice = "Paper"; 
    
  }
  
  if (player2Choice == 3 && singlePlayerMode == true && multiPlayerMode == false){
   
    computerChoice = "Scissors"; 
    
  }
  
  if ((player1Choice == 1 && player2Choice == 1) || (player1Choice == 2 && player2Choice == 2) || (player1Choice == 3 && player2Choice == 3)){  //draw if condition 
    
      player1Choice = 0;
      player2Choice = 0;
    
  }
   if ((player1Choice == 1 && player2Choice == 2) || (player1Choice == 2 && player2Choice == 3) || (player1Choice == 3 && player2Choice == 1)){  //win conditons for player 2
    
      player1Choice = 0;
      player2Choice = 0;
      player2WinCount = player2WinCount+1;
    
  }
   if (player1Choice == 1 && player2Choice == 3 || (player1Choice == 2 && player2Choice == 1) || (player1Choice == 3 && player2Choice == 2)){ //win contirons for player 1
    
      player1Choice = 0;
      player2Choice = 0;
      player1WinCount = player1WinCount+1;
    
  } 

}

void mouseClicked() {  //contains if statements for determining which buttons have been pressed

  if (mouseX > 145 && mouseX < 345 && mouseY > 100 && mouseY < 175) { //if statements for player 1 selections
     player1Choice = 1;
     
     if(singlePlayerMode == true && multiPlayerMode == false){  //if statement for telling the program to make a random choice for the computer's turn
         player2Choice = (int) random(1, 4);
     }
     
  }

  if (mouseX > 145 && mouseX < 345 && mouseY > 200 && mouseY < 275) { //if statements for player 1 selections
     player1Choice = 2;
     
     if(singlePlayerMode == true && multiPlayerMode == false){  //if statement for telling the program to make a random choice for the computer's turn
         player2Choice = (int) random(1, 4);
     }
     
  }

  if (mouseX > 145 && mouseX < 345 && mouseY > 300 && mouseY < 375) { //if statements for player 1 selections
     player1Choice = 3;
     
     if(singlePlayerMode == true && multiPlayerMode == false){  //if statement for telling the program to make a random choice for the computer's turn
         player2Choice = (int) random(1, 4);
     }
     
  }

  if (mouseX > 655 && mouseX < 855 && mouseY > 100 && mouseY < 175 && singlePlayerMode == false && multiPlayerMode == true) {  //if statments for player two buttons which only show when multi player mode is selected
     player2Choice = 1;
  }
  if (mouseX > 655 && mouseX < 855 && mouseY > 200 && mouseY < 275 && singlePlayerMode == false && multiPlayerMode == true) {
     player2Choice = 2;
  }
  if (mouseX > 655 && mouseX < 855 && mouseY > 300 && mouseY < 375 && singlePlayerMode == false && multiPlayerMode == true) {
     player2Choice = 3;
  }
  if (mouseX > 300 && mouseX < 400 && mouseY > 400 && mouseY < 475) {// button for changing from multi to single player
     singlePlayerMode = true;
     multiPlayerMode = false;
  }
  if (mouseX > 600 && mouseX < 700 && mouseY > 400 && mouseY < 475) {  // button for changing from single to multi player
     multiPlayerMode = true;
     singlePlayerMode = false;
  }

}