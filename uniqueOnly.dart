import 'dart:io';

void main() {
  print("Enter a list of integers (comma-separated): ");
  String input = stdin.readLineSync() ?? "";

  List<int> originalList = parseInput(input);

  if (originalList.isEmpty) {
    print("Invalid input. Please enter a list of integers.");
    return;
  }

  List<int> uniqueList = findUniqueElements(originalList);

  print("Unique Elements: $uniqueList");
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

List<int> findUniqueElements(List<int> list) {
  List<int> uniqueList = [];
  Set<int> seen = Set<int>();

  for (int num in list) {
    if (!seen.contains(num)) {
      uniqueList.add(num);
      seen.add(num);
    }
  }

  return uniqueList;
}
