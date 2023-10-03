import 'dart:io';

void main() {
  print("Enter the first number: ");
  int a = int.parse(stdin.readLineSync() ?? "0");

  print("Enter the second number: ");
  int b = int.parse(stdin.readLineSync() ?? "0");

  int gcd = calculateGCD(a, b);

  print("The GCD of $a and $b is $gcd");
}

int calculateGCD(int a, int b) {
  while (b != 0) {
    final remainder = a % b;
    a = b;
    b = remainder;
  }
  return a;
}
