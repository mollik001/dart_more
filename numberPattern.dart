import 'dart:io';

void main() {
  print("Enter the number of rows for the pattern:");
  String input = stdin.readLineSync() ?? "";
  int numberOfRows = int.tryParse(input) ?? 0;

  if (numberOfRows <= 0) {
    print("Please enter a valid positive number.");
    return;
  }

  generateNumberPattern(numberOfRows);
}

void generateNumberPattern(int rows) {
  for (int i = 1; i <= rows; i++) {
    String pattern = '';
    for (int j = 1; j <= i; j++) {
      pattern += j.toString();
    }
    print(pattern);
  }
}
