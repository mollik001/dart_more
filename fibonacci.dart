void main() {
  print("Enter the number of terms: ");
  int n = 10; // Replace with user input

  if (n <= 0) {
    print("Number of terms must be greater than 0.");
  } else {
    List<int> fibonacciSeries = generateFibonacci(n);
    print("Fibonacci Series: $fibonacciSeries");
  }
}

List<int> generateFibonacci(int n) {
  if (n <= 0) {
    return [];
  }

  List<int> series = [0, 1];

  while (series.length < n) {
    int nextTerm = series[series.length - 1] + series[series.length - 2];
    series.add(nextTerm);
  }

  return series;
}
