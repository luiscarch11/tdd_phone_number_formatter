class NumberSpecialCharactersCleaner {
  const NumberSpecialCharactersCleaner._(this.cleanNumber);
  final String cleanNumber;
  factory NumberSpecialCharactersCleaner(String initialNumber) {
    NumberSpecialCharactersCleaner._(_cleanNumber(initialNumber));
  }
  static String _cleanNumber(String numberToClean) {
    return null;
  }
}
