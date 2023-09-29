void main() {
  Car myCar = Car("Toyota", "Camry", 2022);

  myCar.start();
  print("Is the car running? ${myCar.isRunning}");

  myCar.honk();

  myCar.stop();
  print("Is the car running? ${myCar.isRunning}");
}

class Car {
  String make;
  String model;
  int year;
  bool isRunning = false;

  Car(this.make, this.model, this.year);

  void start() {
    isRunning = true;
    print("Car engine started.");
  }

  void stop() {
    isRunning = false;
    print("Car engine stopped.");
  }

  void honk() {
    print("Honk! Honk!");
  }
}
