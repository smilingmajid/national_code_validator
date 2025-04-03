library national_code_validator;

/// Iranian National Code Validator Library
///
/// This library implements the validation algorithm for Iranian National Code.
/// The Iranian National Code is a 10-digit number that follows a specific validation algorithm.
class NationalCodeValidator {
  /// Validates an Iranian National Code
  ///
  /// This method performs all validation steps for the national code:
  /// 1. Checks for exact 10-digit length
  /// 2. Verifies that the code contains only digits
  /// 3. Checks that not all digits are identical
  /// 4. Calculates the weighted sum of digits
  /// 5. Computes the remainder of division by 11
  /// 6. Calculates and compares the control digit
  ///
  /// [code] The national code as a string
  ///
  /// Returns `true` if the national code is valid, otherwise `false`
  static bool isValid(String code) {
    // 1. Check for exact 10-digit length
    if (code.length != 10) {
      return false;
    }

    // 2. Verify that the code contains only digits
    if (!RegExp(r'^\d{10}$').hasMatch(code)) {
      return false;
    }

    // 3. Check that not all digits are identical
    if (RegExp(r'^(.)\1*$').hasMatch(code)) {
      return false;
    }

    // Convert string to list of integers
    List<int> digits = code.split('').map(int.parse).toList();

    // 4. Calculate weighted sum of digits
    // Weights from 10 to 2 for the first 9 digits
    int sum = 0;
    for (int i = 0; i < 9; i++) {
      sum += digits[i] * (10 - i);
    }

    // 5. Calculate remainder of division by 11
    int remainder = sum % 11;

    // 6. Calculate control digit
    int controlDigit;
    if (remainder < 2) {
      controlDigit = remainder;
    } else {
      controlDigit = 11 - remainder;
    }

    // 7. Compare calculated control digit with the 10th digit
    return digits[9] == controlDigit;
  }
}
