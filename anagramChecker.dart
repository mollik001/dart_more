import 'dart:io';

//Anagrams are words or phrases formed by rearranging the letters of another word or phrase
void main() {
  print("Enter the first string: ");
  String str1 = stdin.readLineSync() ?? "";
  print("Enter the second string: ");
  String str2 = stdin.readLineSync() ?? "";

  bool areAnagrams = checkAnagrams(str1, str2);

  if (areAnagrams) {
    print("The strings '$str1' and '$str2' are anagrams.");
  } else {
    print("The strings '$str1' and '$str2' are not anagrams.");
  }
}

bool checkAnagrams(String str1, String str2) {
  str1 = str1.replaceAll(' ', '').toLowerCase();
  str2 = str2.replaceAll(' ', '').toLowerCase();

  return (str1.split('')..sort()).join('') == (str2.split('')..sort()).join('');
}
