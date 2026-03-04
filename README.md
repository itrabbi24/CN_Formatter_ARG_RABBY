# CN Formatter By ARG RABBI

A Dart package for Consignment Note (CN) Number formatting, normalization, and scan type resolution.
Developed by ARG RABBI.

## Features

- Normalize Consignment Note numbers based on specific barcode patterns.
- Resolve CN number lengths and determine the scan type (`Sticker`, `Receipt`, `HandType`).
- Handle dot-based shortening patterns used in shipping & logistics systems.

## Getting started

To use this package, add `cn_formatter_by_arg_rabbi` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  cn_formatter_by_arg_rabbi: ^1.0.0
```

## Usage

```dart
import 'package:cn_formatter_by_arg_rabbi/cn_formatter_by_arg_rabbi.dart';

void main() {
  var result = CnFormatter.normalize('12345..');
  print('Normalized CN: ${result['cnNumber']}');
  print('Scan Type: ${result['scanType']}');
}
```

## Additional information

Developed by [ARG RABBI](https://itrabbi24.github.io/)  
Phone: \`8801955109710\`  
