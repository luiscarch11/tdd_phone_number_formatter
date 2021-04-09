import 'package:dart_application_1/number_special_characters_cleaner.dart';
import 'package:test/test.dart';

void main() {
  test('for input "444--323 ." its property cleanNumber should return 444323',
      () {
    final instance = NumberSpecialCharactersCleaner('444--323 .');
    expect(instance.cleanNumber, '444323');
  });
}
