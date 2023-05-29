import 'package:test/test.dart';

import '../../bin/string/reverse_only_letters.dart';

void main() {
  test('reverse only letters - test 1', () {
    String input = reverseOnlyLetters('a-bC-dEf!!');
    expect(input, 'f-Ed-Cba!!');
  });
  test('reverse only letters - test 2', () {
    String input = reverseOnlyLetters('ab-cd');
    expect(input, 'dc-ba');
  });
}
