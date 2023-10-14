import 'dart:io';

void main() {
  final shoppingList = <String, int>{};

  print("Welcome to the Shopping List Organizer!");

  while (true) {
    print("\nOptions:");
    print("1. Add item to the shopping list");
    print("2. View the shopping list");
    print("3. Exit");
    stdout.write("Enter your choice: ");
    final choice = int.tryParse(stdin.readLineSync() ?? '');

    if (choice == 1) {
      addItemToShoppingList(shoppingList);
    } else if (choice == 2) {
      viewShoppingList(shoppingList);
    } else if (choice == 3) {
      break;
    } else {
      print("Invalid choice. Please enter a valid option.");
    }
  }

  print("Thank you for using the Shopping List Organizer!");
}

void addItemToShoppingList(Map<String, int> shoppingList) {
  stdout.write("Enter the item name: ");
  final item = stdin.readLineSync()?.toLowerCase() ?? '';

  if (item.isEmpty) {
    print("Item name cannot be empty.");
    return;
  }

  stdout.write("Enter the quantity: ");
  final quantity = int.tryParse(stdin.readLineSync() ?? '');

  if (quantity != null && quantity > 0) {
    shoppingList[item] = (shoppingList[item] ?? 0) + quantity;
    print("Added $quantity $item(s) to the shopping list.");
  } else {
    print("Invalid quantity. Please enter a valid positive number.");
  }
}

void viewShoppingList(Map<String, int> shoppingList) {
  if (shoppingList.isEmpty) {
    print("Shopping list is empty.");
  } else {
    print("\nShopping List:");
    shoppingList.forEach((item, quantity) {
      print("$item: $quantity");
    });
  }
}
