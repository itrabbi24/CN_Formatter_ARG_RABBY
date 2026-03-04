# CN Formatter By ARG RABBI

A Dart package for Consignment Note (CN) Number formatting, normalization, and scan type resolution.
Developed by ARG RABBI.

## Features

- Normalize Consignment Note numbers based on specific barcode patterns.
- Resolve CN number lengths and determine the scan type (`Sticker`, `Receipt`, `HandType`).
- Handle dot-based shortening patterns used in shipping & logistics systems.

## Installation

There are two primary ways to install the package:

### 1. Using CLI (Recommended)

Run the following command in your terminal at the root of your project:

**For Flutter projects:**
```bash
flutter pub add cn_formatter_arg_rabbi
```

**For pure Dart projects:**
```bash
dart pub add cn_formatter_arg_rabbi
```

This will automatically add the latest version to your `pubspec.yaml` and run an implicit `pub get`.

### 2. Manual Installation

Open your `pubspec.yaml` file and add the dependency manually:

```yaml
dependencies:
  cn_formatter_arg_rabby: ^1.0.1
```

Then, run:
```bash
flutter pub get
```
*(or `dart pub get` for Dart-only projects)*

---

## Updating the Package

To update to the latest version published on pub.dev, simply run:

```bash
flutter pub upgrade cn_formatter_arg_rabbi
```
## Usage

```dart
import 'package:cn_formatter_arg_rabby/cn_formatter_arg_rabby.dart';

void main() {
  var result = CnFormatter.normalize('12345..');
  print('Normalized CN: ${result['cnNumber']}');
  print('Scan Type: ${result['scanType']}');
}
```

## Additional information

Developed by **[ARG RABBI](https://itrabbi24.github.io/)**  
Email: `itrabbi24@gmail.com`

### Links 
- **Pub.dev:** [https://pub.dev/packages/cn_formatter_arg_rabbi](https://pub.dev/packages/cn_formatter_arg_rabby)
- **GitHub Repository:** [https://github.com/itrabbi24/CN_Formatter_ARG_RABBY](https://github.com/itrabbi24/CN_Formatter_ARG_RABBY)
