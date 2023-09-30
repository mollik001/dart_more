import 'dart:io';

void main() {
  print("Enter a positive integer:");
  String input = stdin.readLineSync() ?? "";
  int number = int.tryParse(input) ?? 0;

  if (number > 1 && isPrime(number)) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n ~/ 2; i++) {
    //n ~/ 2 is used for integer division. like : 7 ~/ 2 = 3.5 = 3
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
