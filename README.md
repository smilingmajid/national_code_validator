<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

# National Code Validator | کد ملی اعتبارسنج | Nationale Code-Validator

## 🇬🇧 English
A Dart library for validating Iranian National Code (کد ملی).

### Features
- Validates the format and mathematical algorithm of Iranian National Code
- Checks for exact 10-digit length
- Verifies the control digit
- Prevents common invalid patterns (like repeated digits)

### Usage
```dart
import 'package:national_code_validator/national_code_validator.dart';

void main() {
  String nationalCode = "0123456789";
  bool isValid = NationalCodeValidator.isValid(nationalCode);
  print(isValid); // Returns true or false
}
```

---

## 🇩🇪 Deutsch
Eine Dart-Bibliothek zur Validierung des iranischen Nationalkodes (کد ملی).

### Funktionen
- Validiert das Format und den mathematischen Algorithmus des iranischen Nationalkodes
- Überprüft die genaue 10-stellige Länge
- Verifiziert die Kontrollziffer
- Verhindert häufige ungültige Muster (wie wiederholte Ziffern)

### Verwendung
```dart
import 'package:national_code_validator/national_code_validator.dart';

void main() {
  String nationalCode = "0123456789";
  bool isValid = NationalCodeValidator.isValid(nationalCode);
  print(isValid); // Gibt true oder false zurück
}
```

---

## 🇮🇷 فارسی
یک کتابخانه Dart برای اعتبارسنجی کد ملی ایرانی.

### ویژگی‌ها
- بررسی فرمت و الگوریتم ریاضی کد ملی ایرانی
- بررسی دقیق طول ۱۰ رقمی
- تأیید رقم کنترل
- جلوگیری از الگوهای نامعتبر رایج (مانند ارقام تکراری)

### نحوه استفاده
```dart
import 'package:national_code_validator/national_code_validator.dart';

void main() {
  String nationalCode = "0123456789";
  bool isValid = NationalCodeValidator.isValid(nationalCode);
  print(isValid); // true یا false برمی‌گرداند
}
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
