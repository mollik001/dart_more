int findSecondLargest(List<int> numbers) {
  if (numbers.length < 2) {
    throw ArgumentError('The list must contain at least two elements.');
  }

  int largest = numbers[0];
  int? secondLargest;

  for (int number in numbers) {
    if (number > largest) {
      secondLargest = largest;
      largest = number;
    } else if (number < largest &&
        (secondLargest == null || number > secondLargest)) {
      secondLargest = number;
    }
  }

  return secondLargest!;
}

void main() {
  List<int> numbers = [5, 10, 3, 8, 6]; // Example input

  int secondLargest = findSecondLargest(numbers);
  print("The second-largest element is: $secondLargest");
}
