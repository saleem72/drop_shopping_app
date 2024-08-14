//

extension StringSpecific on String {
  String onlyDigits() {
    final aStr = replaceAll(RegExp(r'[^0-9.]'), '');
    return aStr.trim();
  }

  String onlyCurrency() {
    final aStr = replaceAll(RegExp(r'[0-9.]'), '');
    return aStr.trim();
  }
}
