import 'package:national_code_validator/national_code_validator.dart';
import 'package:test/test.dart';

void main() {
  test('Valid national codes', () {
    expect(NationalCodeValidator.isValid("0499370899"),
        true); // Valid national code
    expect(NationalCodeValidator.isValid("4610501317"),
        true); // New valid national code
    expect(NationalCodeValidator.isValid("1234567893"),
        false); // Invalid national code
    expect(NationalCodeValidator.isValid("1111111111"),
        false); // All digits are identical
  });

  test('Invalid national codes', () {
    expect(NationalCodeValidator.isValid("123"), false); // Too short
    expect(
        NationalCodeValidator.isValid("abcdefghij"), false); // Contains letters
    expect(NationalCodeValidator.isValid("0000000000"),
        false); // All digits are identical
  });
}
