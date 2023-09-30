import 'dart:io';
import 'dart:math';

void main() {
  final Random random = Random();
  final int targetNumber = random.nextInt(100) + 1;
  int numberOfGuesses = 0;

  print("Welcome to the Number Guessing Game!");
  print("Try to guess the number between 1 and 100.");

  while (numberOfGuesses < 10) {
    print("Enter your guess (1-100):");
    String input = stdin.readLineSync() ?? "";
    int guess = int.tryParse(input) ??
        0; // diff between parse and tryParse: tryParse can take invalid int number too.

    if (guess < 1 || guess > 100) {
      print("Please enter a valid guess between 1 and 100.");
      continue;
    }

    numberOfGuesses++;

    if (guess < targetNumber) {
      print("Too low, try again.");
    } else if (guess > targetNumber) {
      print("Too high, try again.");
    } else {
      print("Congratulations, you guessed the number!");
      print("You took $numberOfGuesses guesses.");
      break;
    }
  }

  if (numberOfGuesses >= 10) {
    print("Sorry, you've reached the maximum number of guesses.");
    print("The correct number was $targetNumber.");
  }
}
