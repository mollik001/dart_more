void main() {
  BankAccount account = BankAccount("123456789", "John Doe");

  account.deposit(1000);
  account.withdraw(500);
  account.deposit(200);
  //account.withdraw(300);

  print("Account Holder: ${account.accountHolderName}");
  print("Account Number: ${account.accountNumber}");
  print("Current Balance: \$${account.getBalance()}");
  print("Transaction History:");
  account.viewTransactions();
}

class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;
  List<String> transactions = [];

  BankAccount(this.accountNumber, this.accountHolderName) : balance = 0.0;

  void deposit(double amount) {
    balance += amount;
    transactions.add("Deposited: \$${amount.toStringAsFixed(2)}");
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      transactions.add("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      transactions.add("Withdrawal failed: Insufficient balance");
    }
  }

  double getBalance() {
    return balance;
  }

  void viewTransactions() {
    for (String transaction in transactions) {
      print(transaction);
    }
  }
}
