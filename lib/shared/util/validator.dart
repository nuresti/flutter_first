class Validator {
  static bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    bool isValid = emailRegex.hasMatch(email);
    return isValid;
  }

  static bool isValidName(String name) {
    final RegExp nameRegex = RegExp(r'^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$');
    return nameRegex.hasMatch(name);
  }
}
