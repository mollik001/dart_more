import 'dart:io';

void main() {
  print("Enter a positive integer: ");
  int number = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  if (isPalindrome(number)) {
    print("Palindrome");
  } else {
    print("Not a Palindrome");
  }
}

bool isPalindrome(int number) {
  String numberStr = number.toString();
  String reversedStr = numberStr.split('').reversed.join('');
  return numberStr == reversedStr;
}
