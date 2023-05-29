/*
  Given a string S, return "reversed" string where all characters 
  that are not a letter stay in the same place. 
  and all letters reverse theri positions.

  Examples: 
  
  i/p: "ab-cd"
  o/p: "dc-ba"

  i/p: "a-bC-dEf!!"
  o/p: "f-Ed-Cba!!"

*/

String reverseOnlyLetters(String s) {
  List<String> result = s.split("");
  int i = 0, j = result.length - 1;
  while (i < j) {
    if (!_isLetter(result[i])) {
      i++;
    } else if (!_isLetter(result[j])) {
      j--;
    } else {
      String temp = s[i];
      result[i] = result[j];
      result[j] = temp;
      i++;
      j--;
    }
  }

  return result.join();
}

bool _isLetter(String letter) {
  return RegExp(r'[a-z]', caseSensitive: false).hasMatch(letter);
}
