import 'dart:io';

void main() {
  print("Enter a password:");
  String password = stdin.readLineSync() ?? "";

  PasswordStrength strength = checkPasswordStrength(password);

  switch (strength) {
    case PasswordStrength.weak:
      print("Password is weak.");
      break;
    case PasswordStrength.moderate:
      print("Password is moderate.");
      break;
    case PasswordStrength.strong:
      print("Password is strong.");
      break;
    default:
      print("Invalid password.");
      break;
  }
}

enum PasswordStrength {
  weak,
  moderate,
  strong,
}

PasswordStrength checkPasswordStrength(String password) {
  if (password.length < 8) {
    return PasswordStrength.weak;
  }

  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasDigit = false;
  bool hasSpecialChar = false;

  for (int i = 0; i < password.length; i++) {
    final char = password[i];
    if (char == char.toUpperCase()) {
      hasUpperCase = true;
    } else if (char == char.toLowerCase()) {
      hasLowerCase = true;
    } else if (RegExp(r'[0-9]').hasMatch(char)) {
      hasDigit = true;
    }
  }

  // Check for at least one special character
  if (RegExp(r'[!@#\$%^&*()_+{}\[\]:;<>,.?~\\-]').hasMatch(password)) {
    hasSpecialChar = true;
  }

  if (hasUpperCase && hasLowerCase && hasDigit && hasSpecialChar) {
    return PasswordStrength.strong;
  } else if (hasUpperCase && hasLowerCase && hasDigit) {
    return PasswordStrength.moderate;
  } else {
    return PasswordStrength.weak;
  }
}
