library;

class NationalCodeValidator {
  /// Checks if the given Iranian national code is valid
  static bool isValid(String code) {
    // Ensure the code is exactly 10 digits long and contains only numbers
    if (code.length != 10 || !RegExp(r'^\d{10}$').hasMatch(code)) {
      return false;
    }

    // Prevent codes with all identical digits (e.g., 0000000000, 1111111111)
    if (RegExp(r'^(.)\1*$').hasMatch(code)) {
      return false;
    }

    // Calculate the weighted sum of the first 9 digits with multipliers 10 to 2
    List<int> digits = code.split('').map(int.parse).toList();
    int sum = 0;
    for (int i = 0; i < 9; i++) {
      sum += digits[i] * (10 - i);
    }

    // Compute the control digit
    int remainder = sum % 11;
    int controlDigit = remainder < 2 ? remainder : (11 - remainder);

    // Validate the control digit
    return digits[9] == controlDigit;
  }
}
