import 'dart:io';

void main() {
  print("Enter a text: ");
  String inputText = stdin.readLineSync() ??
      ""; // Read user input. returns empty string if user does not type anything

  int count = wordCount(inputText);
  print("Word count: $count");
}

int wordCount(String text) {
  // Handle empty or whitespace-only strings
  if (text.trim().isEmpty) {
    return 0;
  }

  List<String> words = text.split(RegExp(r'\s+'));
  return words.length;
}
