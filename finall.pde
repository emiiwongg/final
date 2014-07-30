String[] binaryNumbers = {
  "01000001", "01000010", "01000011", "01000100", "01000101", "01000110", "01000111", "01001000", "01001001", "01001010", "01001011", "01001100", "01001101", "01001110", "01001111", "01010000", "01010001", "01010010", "01010011", "01010100", "01010101", "01010110", "01010111", "01011000", "01011001", "01011010", "00100000"
};

String inputs = "";
String characters = "";

String[] binaryLetters = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", " " };


void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  
  fill(0);
  text(inputs,40,40);
  fill(0);
  text(characters,40,80);
  
  for(int i = 0; i < 27; i++){
    text(binaryLetters[i],270,40+15*i);
    text(binaryNumbers[i],300,40+15*i);
  }
  
}

void keyPressed() {
  if (key == '1') {
    inputs = inputs + "1";
  } 

  if (key == '0') {
    inputs = inputs + "0";
  }

  if (keyCode == ENTER) {
    submitString();
  }
}


boolean submitString(){
  
  for(int i = 0; i < 27; i++){
    if(inputs == binaryNumbers[i]){
      characters = characters + binaryLetters[i];
    }
  }
  
  inputs = "";
  
  return true;
}
