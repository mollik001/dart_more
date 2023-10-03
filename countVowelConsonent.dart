import 'dart:io';

void main() {
  print("Enter a string: ");
  String input = stdin.readLineSync() ?? "";

  int vowels = 0;
  int consonants = 0;

  for (int i = 0; i < input.length; i++) {
    String character = input[i].toLowerCase();

    if (character == 'a' ||
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u') {
      vowels++;
    } else if (character.codeUnitAt(0) >= 'a'.codeUnitAt(0) &&
        character.codeUnitAt(0) <= 'z'.codeUnitAt(0)) {
      consonants++;
    }
  }

  print("Vowels: $vowels");
  print("Consonants: $consonants");
}
