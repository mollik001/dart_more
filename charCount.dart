void main() {
  String? input = "faysal"; // Replace with your input string
  if (input != null) {
    countCharacters(input);
  }
}

void countCharacters(String? input) {
  if (input == null) {
    print("Input is null.");
    return;
  }

  Map<String, int> charCount = {};

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (charCount.containsKey(char)) {
      charCount[char] = (charCount[char] ?? 0) + 1;
    } else {
      charCount[char] = 1;
    }
  }

  charCount.forEach((char, count) {
    print("Character '$char' occurs $count time(s).");
  });
}
