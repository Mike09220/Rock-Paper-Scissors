Button player1Rock;
Button player1Paper; //initialise classes
Button player1Scissors;
Button player2Rock;
Button player2Paper;
Button player2Scissors;
Button singlePlayer;
Button multiPlayer;
Button mainMenuButton;

int player1Choice;      //varibales for player choices, win counts and multiplayer and single player options
int player2Choice;
int player1WinCount;
int player2WinCount;
boolean singlePlayerMode = false;
boolean multiPlayerMode = false;
boolean mainMenu = true;
String computerChoice = "None";
boolean player1Win = false;
boolean player2Win = false;
boolean playersDrew = false;



void setup(){
  
  size(1000, 500);
  
  player1Rock = new Button(145, 100, 200, 75, color(#AA7F38), "Rock", color(#805815), 10, 25);  //contructers for button classes throughout the dropgram
  player1Paper = new Button(145, 200, 200, 75, color(#AA7F38), "Paper", color(#805815), 10, 25);
  player1Scissors = new Button(145, 300, 200, 75, color(#AA7F38), "Scissors", color(#805815), 10, 25);
  player2Rock = new Button(655, 100, 200, 75, color(#AA7F38), "Rock", color(#805815), 10, 25);
  player2Paper = new Button(655, 200, 200, 75, color(#AA7F38), "Paper", color(#805815), 10, 25);
  player2Scissors = new Button(655, 300, 200, 75, color(#AA7F38), "Scissors", color(#805815), 10, 25);
  
  singlePlayer = new Button(100, 250, 300, 100, color(#AA7F38), "Single Player", color(#805815), 10, 25);
  multiPlayer = new Button(600, 250, 300, 100, color(#AA7F38), "Multi Player", color(#805815), 10, 25);
  mainMenuButton = new Button(-1, -1, 150, 35, color(#AA7F38), "Main Menu", color(#805815), 0, 25);
}

void draw(){
  
  background(#246D5F);
  
  
  
  if (mainMenu == true && singlePlayerMode == false && multiPlayerMode == false){
    
      fill(0);
      textSize(80);
      text("Rock Paper Scissors", 500, 100); //player one title 
    
      singlePlayer.display(); //calls the display function from the button classes for various instances
      multiPlayer.display();
    
  }
  
  if ((singlePlayerMode == true || multiPlayerMode == true) && mainMenu == false){ 
   
      
  fill(#246D5F);
  strokeWeight(0);
  rect(0, 0, 500, 500);
  strokeWeight(0);
  fill(#A23645);  
  rect(500, 0, 500, 500);
  
  fill(0);
  textSize(32); 
  text("Player 1", 245, 50); //player one title  
  text("Wins", 50, 400);  //text for player 1 wins  
  text(player1WinCount, 50, 450);    
  
  player1Rock.display();
  player1Paper.display();
  player1Scissors.display();
  
  mainMenuButton.display();

  
  }  
  
  if (singlePlayerMode == true && multiPlayerMode == false && mainMenu == false){ 
  
  fill(0);
  textSize(32);  
  text("Computer", 755, 50);
  text("Wins", 950, 400);
  text(player2WinCount, 950, 450);
  textSize(32);
  text("Computer Selection", 755, 137.5);
  text(computerChoice, 755, 200);
  
  }
  
  
 if (singlePlayerMode == false && multiPlayerMode == true && mainMenu == false){  //if statenebt for multi player mode
 
  fill(0);
  textSize(32);
  text("Player 2", 755, 50);  //text for player 2
  text("Wins", 950, 400);
  text(player2WinCount, 950, 450); 
 
  player2Rock.display();  //calling display fucntion
  player2Paper.display();
  player2Scissors.display();
  
  mainMenuButton.display();
  
 }
 
   if (player2Choice == 1 && singlePlayerMode == true && multiPlayerMode == false && mainMenu == false){ // if statements for  display of computer's choice
   
    computerChoice = "Rock"; 
    
  }
  
  if (player2Choice == 2 && singlePlayerMode == true && multiPlayerMode == false && mainMenu == false){
   
    computerChoice = "Paper"; 
    
  }
  
  if (player2Choice == 3 && singlePlayerMode == true && multiPlayerMode == false && mainMenu == false){
   
    computerChoice = "Scissors"; 
    
  }
  
  if ((player1Choice == 1 && player2Choice == 1) || (player1Choice == 2 && player2Choice == 2) || (player1Choice == 3 && player2Choice == 3)){  //draw if condition     
    
      playersDrew = true;
      player1Win = false;
      player2Win = false;
      player1Choice = 0;
      player2Choice = 0;      
    
  }
   if ((player1Choice == 1 && player2Choice == 2) || (player1Choice == 2 && player2Choice == 3) || (player1Choice == 3 && player2Choice == 1)){  //win conditons for player 2
    
      playersDrew = false;
      player1Win = false;
      player2Win = true;
      player1Choice = 0;
      player2Choice = 0;
      player2WinCount = player2WinCount+1;         
    
  }
   if (player1Choice == 1 && player2Choice == 3 || (player1Choice == 2 && player2Choice == 1) || (player1Choice == 3 && player2Choice == 2)){ //win contirons for player 1
     
      playersDrew = false;
      player1Win = true;
      player2Win = false;
      player1Choice = 0;
      player2Choice = 0;
      player1WinCount = player1WinCount+1;     
    
  } 
  
  if (player1Win == true && player2Win == false && playersDrew == false) {
    
    fill(0);
    textSize(60);
    text("Player 1 Wins", 500, 425);
    
  }
  
  if (player1Win == false && player2Win == true && playersDrew == false) {
    
    fill(0);
    textSize(60);
    text("Player 2 Wins", 500, 425);
    
  }
  
  if (player1Win == false && player2Win == false && playersDrew == true) {
    
    fill(0);
    textSize(60);
    text("Draw", 500, 425);
    
  }

}

void mouseClicked() {  //contains if statements for determining which buttons have been pressed

  if (mouseX > 145 && mouseX < 345 && mouseY > 100 && mouseY < 175 && (singlePlayerMode == true || multiPlayerMode == true) && mainMenu == false) { //if statements for player 1 selections
     player1Choice = 1;
     
     if(singlePlayerMode == true && multiPlayerMode == false){  //if statement for telling the program to make a random choice for the computer's turn
         player2Choice = (int) random(1, 4);
     }
     
  }

  if (mouseX > 145 && mouseX < 345 && mouseY > 200 && mouseY < 275 && (singlePlayerMode == true || multiPlayerMode == true) && mainMenu == false) { //if statements for player 1 selections
     player1Choice = 2;
     
     if(singlePlayerMode == true && multiPlayerMode == false){  //if statement for telling the program to make a random choice for the computer's turn
         player2Choice = (int) random(1, 4);
     }
     
  }

  if (mouseX > 145 && mouseX < 345 && mouseY > 300 && mouseY < 375 && (singlePlayerMode == true || multiPlayerMode == true) && mainMenu == false) { //if statements for player 1 selections
     player1Choice = 3;
     
     if(singlePlayerMode == true && multiPlayerMode == false){  //if statement for telling the program to make a random choice for the computer's turn
         player2Choice = (int) random(1, 4);
     }
     
  }

  if (mouseX > 655 && mouseX < 855 && mouseY > 100 && mouseY < 175 && singlePlayerMode == false && multiPlayerMode == true && mainMenu == false) {  //if statments for player two buttons which only show when multi player mode is selected
     player2Choice = 1;
  }
  if (mouseX > 655 && mouseX < 855 && mouseY > 200 && mouseY < 275 && singlePlayerMode == false && multiPlayerMode == true && mainMenu == false) {
     player2Choice = 2;
  }
  if (mouseX > 655 && mouseX < 855 && mouseY > 300 && mouseY < 375 && singlePlayerMode == false && multiPlayerMode == true && mainMenu == false) {
     player2Choice = 3;
  }
  if (mouseX > 100 && mouseX < 400 && mouseY > 250 && mouseY < 350 && singlePlayerMode == false && multiPlayerMode == false && mainMenu == true) {// button for changing from multi to single player
     singlePlayerMode = true;
     multiPlayerMode = false;
     mainMenu = false;
  }
  if (mouseX > 600 && mouseX < 900 && mouseY > 250 && mouseY < 350 && singlePlayerMode == false && multiPlayerMode == false && mainMenu == true) {  // button for changing from single to multi player
     multiPlayerMode = true;
     singlePlayerMode = false;
     mainMenu = false;
  }
  
  if (mouseX > 0 && mouseX < 150 && mouseY > 0 && mouseY < 75 && mainMenu == false) {
     multiPlayerMode = false;
     singlePlayerMode = false;
     mainMenu = true;
     
     player1WinCount = 0;
     player2WinCount = 0;
     player1Win = false;
     player2Win = false;
     playersDrew = false;
    
  }

}