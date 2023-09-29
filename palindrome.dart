import 'dart:io';

void main() {
  print("Enter a string:");
  String input = stdin.readLineSync() ?? "";
  String cleanInput = removeNonAlphanumericCharacters(input.toLowerCase());

  if (isPalindrome(cleanInput)) {
    print("$input is a palindrome.");
  } else {
    print("$input is not a palindrome.");
  }
}

bool isPalindrome(String text) {
  int start = 0;
  int end = text.length - 1;
  while (start < end) {
    if (text[start] != text[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}

String removeNonAlphanumericCharacters(String text) {
  return text.replaceAll(RegExp(r'[^a-z0-9]'), '');
}
