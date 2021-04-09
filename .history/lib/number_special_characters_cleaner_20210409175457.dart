class NumberSpecialCharactersCleaner {
  const NumberSpecialCharactersCleaner._(this.cleanNumber);
  final String cleanNumber;
  factory NumberSpecialCharactersCleaner(String initialNumber) {
    return NumberSpecialCharactersCleaner._(_cleanNumber(initialNumber));
  }
  static String _cleanNumber(String numberToClean) {
    final regex = RegExp(r'[. -]');

    return numberToClean.replaceAll(regex, '');
  }
}
