import 'dart:io';

void main() {
  print("Enter a list of integers (comma-separated): ");
  String input = stdin.readLineSync() ?? "";
  
  List<int> numbers = parseInput(input);
  
  if (numbers.isEmpty) {
    print("Invalid input. Please enter a list of integers.");
    return;
  }

  // Sort the list
  numbers.sort();

  // Print the sorted list
  print("Sorted List: ${numbers.join(', ')}");
}

List<int> parseInput(String input) {
  List<String> numberStrings = input.split(',');
  List<int> numbers = [];

  for (String numString in numberStrings) {
    try {
      int number = int.parse(numString.trim());
      numbers.add(number);
    } catch (e) {
      // Ignore non-integer values
    }
  }

  return numbers;
}
