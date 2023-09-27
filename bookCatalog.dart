import 'dart:io';

void main() {
  BookCatalog catalog = BookCatalog();

  while (true) {
    print("\nBook Catalog Menu:");
    print("1. Add a book");
    print("2. Remove a book");
    print("3. Find a book by ISBN");
    print("4. List all books");
    print("5. Exit");
    print("Enter your choice (1-5): ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        catalog.addBookFromUserInput();
        break;
      case "2":
        catalog.removeBookByISBN();
        break;
      case "3":
        catalog.findBookByISBN();
        break;
      case "4":
        catalog.listBooks();
        break;
      case "5":
        print("Exiting the program.");
        return;
      default:
        print("Invalid choice. Please enter a valid option (1-5).");
        break;
    }
  }
}

class Book {
  String? title;
  String? author;
  String? isbn;

  Book(this.title, this.author, this.isbn);

  @override
  String toString() {
    return "Title: ${title ?? 'N/A'}\nAuthor: ${author ?? 'N/A'}\nISBN: ${isbn ?? 'N/A'}";
  }
}

class BookCatalog {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addBookFromUserInput() {
    print("Enter book title: ");
    String? title = stdin.readLineSync();
    print("Enter author name: ");
    String? author = stdin.readLineSync();
    print("Enter ISBN: ");
    String? isbn = stdin.readLineSync();

    Book newBook = Book(title, author, isbn);
    addBook(newBook);
    print("Book added successfully.");
  }

  void removeBookByISBN() {
    print("Enter ISBN of the book to remove: ");
    String? isbn = stdin.readLineSync();

    int index = books.indexWhere((book) => book.isbn == isbn);
    if (index != -1) {
      books.removeAt(index);
      print("Book with ISBN $isbn removed.");
    } else {
      print("Book with ISBN $isbn not found.");
    }
  }

  void findBookByISBN() {
    print("Enter ISBN of the book to find: ");
    String? isbn = stdin.readLineSync();

    Book? book;
    try {
      book = books.firstWhere((book) => book.isbn == isbn);
    } catch (e) {
      book = null;
    }

    if (book != null) {
      print("Book Details:");
      print(book);
    } else {
      print("Book with ISBN $isbn not found.");
    }
  }

  void listBooks() {
    if (books.isEmpty) {
      print("The catalog is empty.");
    } else {
      print("Book Catalog:");
      for (Book book in books) {
        print(book);
        print("-------------");
      }
    }
  }
}
