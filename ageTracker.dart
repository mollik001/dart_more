void main() {
  Person person = Person("Faysal Hasan", DateTime(1998, 5, 13));

  Age age = person.calculateAge();
  print("${person.name}'s age is ${age.years} years and ${age.months} months.");
}

class Person {
  String name;
  DateTime birthdate;

  Person(this.name, this.birthdate);

  Age calculateAge() {
    DateTime currentDate = DateTime.now();
    int years = currentDate.year - birthdate.year;
    int months = currentDate.month - birthdate.month;

    if (currentDate.day < birthdate.day) {
      months--;
    }

    if (months < 0) {
      months += 12;
      years--;
    }

    return Age(years, months);
  }
}

class Age {
  int years;
  int months;

  Age(this.years, this.months);
}
