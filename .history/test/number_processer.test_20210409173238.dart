import 'package:dart_application_1/number_processer.dart';
import 'package:test/test.dart';

void main() {
  group('main functionality for processing phone numbers with NumberProcesser',
      () {
    test(
      'NumberProcessed(443--4 6 477963).processedNumber should return 443-464-779-63',
      () {
        final classInstance = NumberProcesser('443--4 6 477963');
        expect(classInstance.processedNumber, '443-464-779-63');
      },
    );
  });
}
