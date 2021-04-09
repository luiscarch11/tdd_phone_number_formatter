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
      if (_shouldTake2Characters(currentCharacter, cleanNumber)) {
        _addCharacters(
          valueToReturn,
          cleanNumber,
          2,
          currentCharacter,
        );
      } else {
        _addCharacters(
          valueToReturn,
          cleanNumber,
          3,
          currentCharacter,
        );
      }
      if (currentCharacter == cleanNumber.length) {
        control = true;
      } else {
        valueToReturn += '-';
      }
    }
    return valueToReturn;
  }

  static bool _shouldTake2Characters(int currentCharacter, String cleanNumber) {
    return currentCharacter == cleanNumber.length - 2 ||
        currentCharacter == cleanNumber.length - 4;
  }

  static void _addCharacters(String textToChange, String sourceText,
      int charactersCount, int currentCharacter) {
    textToChange += sourceText.substring(
        currentCharacter, currentCharacter + charactersCount);
    currentCharacter += charactersCount;
  }

  final String processedNumber;
}
