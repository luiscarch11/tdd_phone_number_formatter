import 'package:dart_application_1/number_special_characters_cleaner.dart';

class NumberProcesser {
  const NumberProcesser._(this.processedNumber);
  factory NumberProcesser(String initialNumber) {
    return NumberProcesser._(_processNumber(initialNumber));
  }
  static String _processNumber(String numberToProcess) {
    final cleanNumber =
        NumberSpecialCharactersCleaner(numberToProcess).cleanNumber;
    var control = false;
    var currentCharacter = 0;
    var valueToReturn = '';
    while (control == false) {
      if (currentCharacter == cleanNumber.length - 2 ||
          currentCharacter == cleanNumber.length - 4) {
        valueToReturn +=
            cleanNumber.substring(currentCharacter, currentCharacter + 2);
        currentCharacter += 2;
      } else {
        valueToReturn +=
            cleanNumber.substring(currentCharacter, currentCharacter + 3);
        currentCharacter += 3;
      }
      if (currentCharacter == cleanNumber.length) {
        control = true;
      } else {
        valueToReturn += '-';
      }
    }
    return valueToReturn;
  }

  final String processedNumber;
}
