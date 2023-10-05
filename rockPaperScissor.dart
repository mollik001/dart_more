import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final List<String> options = ["rock", "paper", "scissors"];

  print("Welcome to Rock, Paper, Scissors!");
  print("Enter your choice (rock, paper, or scissors): ");
  String? userChoice = stdin.readLineSync()?.toLowerCase();
  if (!options.contains(userChoice)) {
    print("Invalid choice. Please choose rock, paper, or scissors.");
    return;
  }

  String computerChoice = options[random.nextInt(3)];
  print("Computer chooses: $computerChoice");

  if (userChoice == computerChoice) {
    print("It's a tie!");
  } else if ((userChoice == "rock" && computerChoice == "scissors") ||
      (userChoice == "scissors" && computerChoice == "paper") ||
      (userChoice == "paper" && computerChoice == "rock")) {
    print("You win!");
  } else {
    print("Computer wins!");
  }
}
