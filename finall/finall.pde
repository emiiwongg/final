PFont myFont;
boolean errorboo = false;


String[] binaryNumbers = {
  "01000001", "01000010", "01000011", "01000100", "01000101", "01000110", "01000111", "01001000", "01001001", "01001010", "01001011", "01001100", "01001101", "01001110", "01001111", "01010000", "01010001", "01010010", "01010011", "01010100", "01010101", "01010110", "01010111", "01011000", "01011001", "01011010", "00100000"
};

String inputs = "";
String characters = "";
String temp = "";

String[] binaryLetters = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", " " };


void setup() {
  size(500, 500);
//  String[] fontList = PFont.list();
//  println(fontList);
  myFont = createFont("Lucida Bright", 32);
  textFont(myFont);

}

void draw() {
 
  background(165, 242, 243);
  
  //Title
  fill(211, 29, 140, 190);
  noStroke();
  rect(30, 40, 220, 100, 7);
  fill(0);
  textSize(24);
  text("Binary Calculator",40,100);
  
  //Clear
  fill(214, 214, 214);
  noStroke();
  rect(230, 285, 50, 30, 7);
  fill(0);
  textSize(12);
  text("Clear",240,305);
  
  //Clear2
  fill(214, 214, 214);
  noStroke();
  rect(230, 225, 50, 30, 7);
  fill(0);
  textSize(12);
  text("Clear",240,245);
  
  
  //Prompts
  fill(0);
  textSize(12);
  text("Input",60,220);
  text("Output",60,280);
  
  //Input
  fill(77, 197, 214);
  noStroke();
  rect(60, 225, 150, 30, 7);
  fill(0);
  textSize(24);
  text(inputs,70,250);
  
  //Output
  fill(238, 136, 205);
  noStroke();
  rect(60, 285, 150, 30, 7);
  fill(0);
  text(characters,70,310);
  
  //List
  for(int i = 0; i < 27; i++){
    textSize(12);
    text(binaryLetters[i],310,40+15*i);
    text(binaryNumbers[i],370,40+15*i);
  }
  
  text("Space", 310, 40 + 15*26);
  
  
  
}

void mouseClicked()
{
  if(mouseX > 230 && mouseY > 285 && mouseX < 280 && mouseY < 335 )
  {
    characters = "";
    print (characters);
  }
  
  if(mouseX > 230 && mouseY > 225 && mouseX < 280 && mouseY < 275 )
  {
    inputs = "";
    print (inputs);
  }
  
}

void keyPressed() {
  if (key == '1') {
    temp = inputs;
    inputs = inputs + "1";
  } 

  if (key == '0') {
    temp = inputs;
    inputs = inputs + "0";
  }
  
  if (keyCode == BACKSPACE) {
    inputs = temp;
  }

  if (keyCode == ENTER) {
    submitString();
  }
}


boolean submitString(){
  
  for(int i = 0; i < 27; i++){
    if(inputs.compareTo(binaryNumbers[i])==0){
      characters = characters + binaryLetters[i];
      
    }
//     else if(inputs != binaryNumbers[i]){
//      fill(255, 0, 0);
//    text("ERROR", 70, 270);
//    }
  }
  
  inputs = "";
  
  return true;
}
