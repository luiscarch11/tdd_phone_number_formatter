import 'package:dart_application_1/number_processer.dart';
import 'package:test/test.dart';

void main() {
  test(
    'NumberProcessed(443--4 6 477963).processedNumber should return 443-464-779-63',
    () {
      final classInstance = NumberProcesser('443--4 6 477963');
      expect(classInstance.processedNumber, '443-464-779-63');
    },
  );
  test(
    'NumberProcessed(44312--).processedNumber should return 443-12',
    () {
      final classInstance = NumberProcesser('44312--');
      expect(classInstance.processedNumber, '443-12');
    },
  );
  test(
    'NumberProcessed(4431221--).processedNumber should return 443-12-21',
    () {
      final classInstance = NumberProcesser('4431221--');
      expect(classInstance.processedNumber, '443-12-21');
    },
  );
  group('main functionality for processing phone numbers with NumberProcesser',
      () {});
}
