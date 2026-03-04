// This package is developed by ARG RABBI
// Contact : https://itrabbi24.github.io/
// Email: itrabbi24@gmail.com

class CnFormatter {
  /// Normalizes a Consignment Note (CN) Number based on specific barcode patterns.
  static Map<String, String> normalize(String inputValue) {
    if (inputValue.isEmpty) return {'cnNumber': '', 'scanType': 'HandType'};

    String scanType = "HandType";

    // Normalize CN number length variations and determine ScanType
    if (inputValue.length == 18 || inputValue.length == 15) {
      String readWhat = inputValue[0];
      scanType = (readWhat == '1')
          ? "Sticker"
          : (readWhat == '0')
          ? "Receipt"
          : "HandType";
      inputValue = inputValue.substring(1);
    }

    // Handle dot-based shortening patterns
    if (inputValue.contains('..')) {
      int padLength = 17 - inputValue.length + 2;
      String padding = padLength > 0 ? List.filled(padLength, '0').join() : '';
      inputValue = inputValue.replaceFirst('..', padding);
    } else if (inputValue.contains('.')) {
      int padLength = 14 - inputValue.length + 1;
      String padding = padLength > 0 ? List.filled(padLength, '0').join() : '';
      inputValue = inputValue.replaceFirst('.', padding);
    }

    return {'cnNumber': inputValue, 'scanType': scanType};
  }
}
