import 'dart:io';

void main() {
  print("Enter a sentence or phrase:");
  String input = stdin.readLineSync() ?? "";

  String reversed = reverseWords(input);

  print("Reversed: $reversed");
}

String reverseWords(String text) {
  List<String> words = text.split(' ');
  List<String> reversedWords = List.from(words.reversed);
  return reversedWords.join(' ');
}
