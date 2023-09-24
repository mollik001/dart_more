void main() {
  var calculator = Calculator();
  var add = calculator.add(5, 10);
  var sub = calculator.sub(5, 10);
  var mul = calculator.mul(5, 10);
  var div = calculator.div(5, 10);
  print("the addition is $add");
  print("the subtraction is $sub");
  print("the multiplication is $mul");
  print("the division is $div");
}

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double sub(double a, double b) {
    return a - b;
  }

  double mul(double a, double b) {
    return a * b;
  }

  double div(double a, double b) {
    return a / b;
  }
}
