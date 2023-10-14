import 'dart:io';

void main() {
  final phoneBook = <String, String>{};

  while (true) {
    print("\nPhone Book Menu:");
    print("1. Add a Contact");
    print("2. View Contacts");
    print("3. Search for a Contact");
    print("4. Delete a Contact");
    print("5. Exit");

    stdout.write("Enter your choice: ");
    final choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addContact(phoneBook);
        break;
      case '2':
        viewContacts(phoneBook);
        break;
      case '3':
        searchContact(phoneBook);
        break;
      case '4':
        deleteContact(phoneBook);
        break;
      case '5':
        print("Exiting Phone Book. Goodbye!");
        return;
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  }
}

void addContact(Map<String, String> phoneBook) {
  stdout.write("Enter the name: ");
  final name = stdin.readLineSync() ?? "";

  stdout.write("Enter the phone number: ");
  final phoneNumber = stdin.readLineSync() ?? "";

  phoneBook[name] = phoneNumber;
  print("Contact added: $name, $phoneNumber");
}

void viewContacts(Map<String, String> phoneBook) {
  if (phoneBook.isEmpty) {
    print("Phone book is empty.");
  } else {
    print("\nContacts in Phone Book:");
    phoneBook.forEach((name, phoneNumber) {
      print("$name: $phoneNumber");
    });
  }
}

void searchContact(Map<String, String> phoneBook) {
  stdout.write("Enter the name to search: ");
  final name = stdin.readLineSync() ?? "";

  final phoneNumber = phoneBook[name];
  if (phoneNumber != null) {
    print("$name's phone number: $phoneNumber");
  } else {
    print("$name not found in the phone book.");
  }
}

void deleteContact(Map<String, String> phoneBook) {
  stdout.write("Enter the name to delete: ");
  final name = stdin.readLineSync() ?? "";

  if (phoneBook.containsKey(name)) {
    phoneBook.remove(name);
    print("$name has been deleted from the phone book.");
  } else {
    print("$name not found in the phone book. Deletion failed.");
  }
}
