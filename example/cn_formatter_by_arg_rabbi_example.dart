import 'package:cn_formatter_by_arg_rabbi/cn_formatter_by_arg_rabbi.dart';

void main() {
  print('--- CN Formatter By ARG RABBI ---');

  // Test a simple string
  var result = CnFormatter.normalize('10001.123');

  print('Original Input: 100010000000000000123');
  print('Normalized CN: ${result['cnNumber']}');
  print('Scan Type Detected: ${result['scanType']}');
}
