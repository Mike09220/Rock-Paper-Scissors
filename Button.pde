public class Button {  //class for buttons
  
  private  int xPosition;    //Variables for drawing buttons
  private  int yPosition;
  private  int buttonWidth;
  private  int buttonHeight;
  private  color buttonFill;
  private  color hoverFill;
  private  String buttonText;
  private  int cornerRadius;
  private  int topLeftRadius;
  private  int topRightRadius;
  private  int bottomRightRadius;
  private  int bottomLeftRaidus;
  private  int buttonTextSize;
  
  Button (int newX, int newY, int newWidth, int newHeight, color newFill, String newText, color newHover , int newCorner, int newTextSize){  //constructor for class
    
  xPosition = newX;   //variables for class
  yPosition = newY;
  buttonWidth = newWidth;
  buttonHeight = newHeight;
  buttonFill = newFill;
  buttonText = newText;
  hoverFill = newHover;
  cornerRadius = newCorner;
  buttonTextSize = newTextSize;
  
  }
  
    Button (int newX, int newY, int newWidth, int newHeight, color newFill, String newText, color newHover , int newTopLeft, int newTopRight, int newBottomRight, int newBottomLeft, int newTextSize){  //constructor for button class but with addiotional varibales for having different radii for each corner
    
  xPosition = newX;   //variables for class
  yPosition = newY;
  buttonWidth = newWidth;
  buttonHeight = newHeight;
  buttonFill = newFill;
  buttonText = newText;
  hoverFill = newHover;
  topLeftRadius = newTopLeft; //the following varibales are additonal for different radii of corners for certain buttons
  topRightRadius = newTopRight;
  bottomRightRadius = newBottomRight;
  bottomLeftRaidus = newBottomLeft;
  buttonTextSize = newTextSize;
  
  }
  
  void display(){
    
    stroke(0);
    strokeWeight(1.5);
    fill(buttonFill);
    rect(xPosition, yPosition, buttonWidth, buttonHeight, cornerRadius);  //rect function for drawing rectagles
    
    textAlign(CENTER, CENTER);
    textSize(buttonTextSize);
    fill(0);
    text(buttonText, xPosition+(buttonWidth/2), yPosition+(buttonHeight/2)); //function for the button text
    
    if (mouseX > xPosition && mouseX < (xPosition+buttonWidth) && mouseY > yPosition && mouseY < (yPosition+buttonHeight)) {  //if statement for button hover
        
        stroke(0);
        strokeWeight(1);
        fill(hoverFill);
        rect(xPosition, yPosition, buttonWidth, buttonHeight, cornerRadius);
        
        textAlign(CENTER, CENTER);
        textSize(buttonTextSize);
        fill(0);
        text(buttonText, xPosition+(buttonWidth/2), yPosition+(buttonHeight/2));
        
        cursor(HAND);
        
      }
         
  }
  
  void displayRounded(){ // display class for the buttons with different rounded corners
    
    stroke(0);
    strokeWeight(1.5);
    fill(buttonFill);
    rect(xPosition, yPosition, buttonWidth, buttonHeight, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRaidus);  //rect function for drawing rectagles with 8 variables that handle different radii on different corners of the rectabngle
    
    textAlign(CENTER, CENTER);
    textSize(buttonTextSize);
    fill(0);
    text(buttonText, xPosition+(buttonWidth/2), yPosition+(buttonHeight/2)); //function for the button text
    
    if (mouseX > xPosition && mouseX < (xPosition+buttonWidth) && mouseY > yPosition && mouseY < (yPosition+buttonHeight)) {  //if statement for button hover
        
        stroke(0);
        strokeWeight(1);
        fill(hoverFill);
        rect(xPosition, yPosition, buttonWidth, buttonHeight, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRaidus);
        
        textAlign(CENTER, CENTER);
        textSize(buttonTextSize);
        fill(0);
        text(buttonText, xPosition+(buttonWidth/2), yPosition+(buttonHeight/2));
        cursor(HAND);
        
      }
      
      
  }
    
  
}