import 'package:national_code_validator/national_code_validator.dart';
import 'package:test/test.dart';

void main() {
  test('Valid national codes', () {
    expect(NationalCodeValidator.isValid("0079059747"), true);
    expect(NationalCodeValidator.isValid("1234567893"), false);
    expect(NationalCodeValidator.isValid("1111111111"), false);
  });

  test('Invalid national codes', () {
    expect(NationalCodeValidator.isValid("123"), false); // Too short
    expect(NationalCodeValidator.isValid("abcdefghij"), false); // Contains letters
    expect(NationalCodeValidator.isValid("0000000000"), false); // All digits are identical
  });
}
