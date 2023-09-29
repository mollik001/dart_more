void main() {
  List<int> numbers = [12, 4, 8, 15, 6, 10, 7];
  int max = numbers[0];
  int min = numbers[0];

  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
    if (num < min) {
      min = num;
    }
  }

  print("Maximum value: $max");
  print("Minimum value: $min");
}
