// Class
// Object
// Inheritance
// Polymorphism
// Interfaces
// Abstract class

/* --> classes are the blueprint of objects. A class is a user defined data type. 
       to get all the properties from a class, we need to create object of that class.

   --> An object is a real-life entity such as a table, human, car, etc. 
       The object has two characteristics - state and behavior.

   --> Inheritance is a system to create new class from an existing class. In that case,
       the newly created class is called child class or subClass. and the other one is 
       called parent class or super class. 
       The keyword to create child class is "extends".

   --> Polymorphism means one thing has many forms. There can be 2 types of polymorhism:

       1. Compile time : It is also called Static Polymorphism. It is related to method overloading.
          Method Overloading is when a class has multiple method of same name but thier parameters are 
          different. Compile-time polymorphism is generally faster and more efficient . example:
           
           class Calculator {
             int add(int a, int b) {
             return a + b;
             }

            double add(double a, double b) {
            return a + b;
             }
           }

      2. Run time : It is also called Dynamic Polymorphism. It is related to method overriding.
         Method Overriding is when a child class have the same metod that the parent class have.
         Run-time polymorphism allows a subclass object to replace a superclass object. example:

         class Shape {
           void draw() {
           System.out.println("Drawing a shape");
           }
        }

        class Circle extends Shape {
          @Override
          void draw() {
          System.out.println("Drawing a circle");
          }
        }

        public class Main {
        public static void main(String[] args) {
        Shape shape = new Circle(); 
        shape.draw(); // Calls the draw method of the Circle class at runtime
          }
        }

   
   --> The interface is defined as a blueprint of the class. It is almost same as the normal class,
       just that every method have to be abstract method, in an Interface. Interface is used for 
       data hiding.

   --> Abstract class a class that contains one or more abstract method. The keyword to declare abstract
       class is "abstract". example:

       abstract class ClassName {  
  
      }  

*/

void main() {
  var terrarium = new Terrarium(); //creating object of Terrarium class.
  terrarium.doCare(
      "closed lid"); //getting access of the method of Terrarium class through object.

  Student student = new Student(20, "molliks");
  student.whichClass(20);
}

//Constructor.
//there are 3 types of constructor.
// Default constructor, Parameterized constructor and Named constructor.

// className.constructor_name(param_list)   --> Named constructor.

class Student {
  int age;
  String name;
  // Declaring a construstor
  Student(this.age, this.name) {
    print("The name is: ${name}");
    print("The age is: ${age}");
  }

  void whichClass(int age) {
    if (age < 25) {
      print("I am undergraduated");
    } else {
      print("I am graduated");
    }
  }
}

class Terrarium {
  String openTerrarium = "open lid";
  String closeTerrarium = "closed lid";
  void doCare(String lidStatus) {
    if (lidStatus == openTerrarium) {
      print("I need to be watered");
    } else {
      print("I don't need to be watered");
    }
  }
}
