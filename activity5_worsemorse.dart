import 'dart:io';
import 'dart:core';

void morseDecode(var toDecode, var decodedMorse){
  if(toDecode.length == 0) {
    print(decodedMorse);
  } else{
    for(int i=0;i<26;i++){
      if(toDecode.startsWith(morseCode[i])){
        var currentDecoded = decodedMorse + alphabetLetters[i];
        var currentToDecode = toDecode.substring(morseCode[i].length);
        morseDecode(currentToDecode, currentDecoded);
      }
    }
  }
}
void main(){
    var str = stdin.readLineSync();
    morseDecode(str, "");
}
var morseCode = [".-", "-...", "-.-.", "-..", ".", "..-.",
             "--.", "....", "..", ".---", "-.-", ".-..",
             "--", "-.", "---", ".--.", "--.-", ".-.",
             "...", "-", "..-", "...-", ".--", "-..-",
             "-.--", "--.."];
var alphabetLetters = ["A", "B", "C", "D", "E", "F",
                "G", "H", "I", "J", "K", "L",
                "M", "N", "O", "P", "Q", "R",
                "S", "T", "U", "V", "W", "X",
                "Y", "Z"];

bool isValid(var str){
    for(var i=0;i<26;i++) {
      if(str==morseCode[i]) {
        return true;
      }
    }
    return false;
}

