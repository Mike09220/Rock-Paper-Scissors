public class Button {  //class for buttons
  
  private  int xPosition;    //Variables for drawing buttons
  private  int yPosition;
  private  int buttonWidth;
  private  int buttonHeight;
  private  color buttonFill;
  private  color hoverFill;
  private  String buttonText;
  
  Button (int newX, int newY, int newWidth, int newHeight, color newFill, String newText, color newHover){  //constructor for class
    
  xPosition = newX;   //variables for class
  yPosition = newY;
  buttonWidth = newWidth;
  buttonHeight = newHeight;
  buttonFill = newFill;
  buttonText = newText;
  hoverFill = newHover;
  
  }
  
  void display(){
    
    stroke(0);
    strokeWeight(2);
    fill(buttonFill);
    rect(xPosition, yPosition, buttonWidth, buttonHeight);  //rect function for drawing rectagles
    
    textAlign(CENTER, CENTER);
    textSize(25);
    fill(0);
    text(buttonText, xPosition+(buttonWidth/2), yPosition+(buttonHeight/2)); //function for the button text
    
    if (mouseX > xPosition && mouseX < (xPosition+buttonWidth) && mouseY > yPosition && mouseY < (yPosition+buttonHeight)) {  //if statement for button hover
        
        stroke(0);
        strokeWeight(2);
        fill(hoverFill);
        rect(xPosition, yPosition, buttonWidth, buttonHeight);
        
        textAlign(CENTER, CENTER);
        textSize(25);
        fill(0);
        text(buttonText, xPosition+(buttonWidth/2), yPosition+(buttonHeight/2));
        
      }
      
  }
  
  
  
  
}