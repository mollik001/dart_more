void main() {
  //VAR
  /*when to use var and when to use String?
  if you use var, its Darts duty to identify what is the data type, based on the value of the variable.
  if you use String or any other data dype, it is you, who specify what is the data type.

  if you want your code to be more flexible, you can use var. but it is confusing in big project.
  if you want your code to be more understandable, you can use String. other persons will easily understand your code.
   */
  var name = 'mollik';
  String name1 = 'mollik';
  // print(name + name1);

  //DYNAMIC
  //dynamic work as the same way as var, more or less. the differences are given below.

  var name2 = 'Smith'; // 'name' is inferred to be of type 'String'.
  // Later in code, you cannot assign a value of a different type to 'name'.

  dynamic value = 'Hello'; // 'value' starts as a String.
  value = 42; // Now 'value' holds an integer.

  // so dynamic is more flexible, but hard to debug, low code readability.

  //FINAL   CONST
  // both are immutable, meaning can not be changed after assigning. so used for constant value.

  //const is a compile-time constant. Their values must be known at compile time.
  const int x = 5;

  //final is a run-time constant.

  /*  Type test Operators :
      is
      is!
      as    */

  // Conditional Expressions:
  //condition ? num1 : num2
  // if condition is true, it returns num1. else it returns num2.
  var a = 10;
  var res =
      a > 12 ? "value greater than 10" : "value lesser than or equal to 10";
  // print( res); // it returns "value greater than 10":"value lesser than or equal to 10"

  // num1 ?? num2
  // if num1 is non-null, returns num1. otherwise returns num2.

  var i = null;
  var j = 12;
  var res2 = i ?? j;
  // print(res2); // returns 12

  // LOOP ----> 1. Definite loop : for loop.
  //            2. Indefinite loope : while , do-while loop.

  for (int i = 0; i <= 10; i++) {
    if (i == 6) {
      break; // this loop will print 0 to 5
    }
    // print("$i number line in the loop");
  }
  // print("loop ended");

  //print some odd number using for loop and continue keyword:

  for (int k = 1; k <= 10; k++) {
    if (k % 2 == 0) {
      continue; //will skip all the value that are divisible by 2
    }
    //print(k);
  }

//it works like abs function
  int negativeNum = -200;
  int positiveNum = 0;
  int count = 0;

  if (negativeNum < 0) {
    for (int i = negativeNum; i < 0; i++) {
      count++;
      positiveNum = count;
    }
  }
  print(positiveNum);
}
