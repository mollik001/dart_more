import 'dart:io';
import 'dart:math';

void main() {
  final List<String> words = [
    "apple",
    "banana",
    "chocolate",
    "dolphin",
    "elephant"
  ];
  final Random random = Random();
  final String selectedWord = words[random.nextInt(words.length)];
  final int maxAttempts = 6; // Number of chances to guess

  List<String> guessedLetters = List.filled(selectedWord.length, "_");
  int attempts = 0;

  print("Welcome to Hangman!");
  print("You have $maxAttempts attempts to guess the word.");

  while (attempts < maxAttempts) {
    print("\nWord: ${guessedLetters.join(" ")}");
    print("Attempts left: ${maxAttempts - attempts}");
    print("Guess a letter: ");
    String guess = stdin.readLineSync()?.toLowerCase() ?? "";

    if (guess.length != 1 || !guess.contains(RegExp(r'[a-z]'))) {
      print("Invalid input. Please enter a single letter.");
      continue;
    }

    bool guessedCorrectly = false;
    for (int i = 0; i < selectedWord.length; i++) {
      if (selectedWord[i] == guess) {
        guessedLetters[i] = guess;
        guessedCorrectly = true;
      }
    }

    if (guessedLetters.join("") == selectedWord) {
      print("Congratulations! You guessed the word: $selectedWord");
      break;
    }

    if (!guessedCorrectly) {
      attempts++;
      print("Incorrect guess. Try again.");
    }
  }

  if (attempts == maxAttempts) {
    print("You're out of attempts. The word was: $selectedWord");
  }
}
