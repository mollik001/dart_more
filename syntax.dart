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

  var q = null;
  var w = 12;
  var res2 = q ?? w;
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
  //print(positiveNum);

  //LIST

  List<int> myList = List<int>.filled(5,
      0); // a list with the size of 5 and each index is filled with 0 initially.

  // now you can assign value for each element
  myList[1] = 1;
  myList[2] = 2;
  myList[3] = 3;
  myList[4] = 4;

  //print(myList);

  List<dynamic> lst = [1, 2, 3, 4];
  // print(lst);

  // calculate the sum and avg of the items of the list:
  List<int> list = [2, 4, 6, 8, 10];
  int sum = 0;
  int avg = 0;
  for (int i = 0; i < list.length; i++) {
    //print(list[i]);

    sum = sum + list[i];
  }
  //print(sum);
  avg = (sum / list.length).toInt();
  //print(avg);

  //find the maxium and minimum value in the list :

  List<int> myList1 = [4, 2, 3, 1, 5, 6, 7];
  int max = myList1[0];
  int min = myList1[0];
  for (int i = 0; i < myList1.length; i++) {
    if (max < myList1[i]) {
      max = myList1[i];
    }
  }
  //print(max);
  for (int i = 0; i < myList1.length; i++) {
    if (min > myList1[i]) {
      min = myList1[i];
    }
  }
  //print(min);

// task: remove duplicate item from a list:

  List<int> listWithDuplicateItem = [1, 2, 2, 6, 6, 8, 2, 9, 6];
  List<int> uniqueList = [];

  for (int i = 0; i < listWithDuplicateItem.length; i++) {
    bool isDuplicate = false;

    for (int j = i + 1; j < listWithDuplicateItem.length; j++) {
      if (listWithDuplicateItem[i] == listWithDuplicateItem[j]) {
        isDuplicate = true;
        break; // No need to continue checking
      }
    }

    if (!isDuplicate) {
      uniqueList.add(listWithDuplicateItem[i]);
    }
  }

  listWithDuplicateItem = uniqueList;
  //print(listWithDuplicateItem);

  //Write a Dart program that merges two sorted lists of integers into a single sorted list:

  List<int> list1 = [1, 3, 5, 7, 9];
  List<int> list2 = [2, 4, 6, 8, 10];
  List<int> mergedList = [];

  int i = 0; // Index for list1
  int j = 0; // Index for list2

  while (i < list1.length && j < list2.length) {
    if (list1[i] < list2[j]) {
      mergedList.add(list1[i]);
      i++;
    } else {
      mergedList.add(list2[j]);
      j++;
    }
  }

  //this part for adding any remaining elements.
  mergedList.addAll(list1.sublist(i));
  mergedList.addAll(list2.sublist(j));

  //print(mergedList);

  //MAP -- is a data format consist of Key-Value pair.
  // Key can not be duplicate. but value can be duplicate.

  var studentInfo = new Map();
  studentInfo['name'] = 'mollik';
  studentInfo['age'] = 25;
  studentInfo['good at'] = 'cricket';
  // print(studentInfo.keys); // to print all the keys
  // print(studentInfo.values); // to print all the values
  // print(studentInfo); // to print key-value pair.

  studentInfo.addAll({
    'hobby': 'reading book',
    'favourite food': 'kacchi'
  }); //to add multiple key-value in an existing Map
  //print(studentInfo);

  studentInfo.remove('favourite food');

  //print(studentInfo);

  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22
  }; //another way to declare a map
}
