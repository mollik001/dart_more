import 'dart:io';

void main() {
  print("Enter a non-negative integer:");
  String input = stdin.readLineSync() ?? "";
  int? number = int.tryParse(input);

  if (number != null && number >= 0) {
    int factorial = calculateFactorial(number);
    print("Factorial of $number is: $factorial");
  } else {
    print("Invalid input. Please enter a non-negative integer.");
  }
}

int calculateFactorial(int n) {
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  return factorial;
}
