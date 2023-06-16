import 'package:test/test.dart';

import '../../bin/graph/maximum_multiplications_to_reach_end.dart';

void main() {
  group('Minimum multiplications to reach end', () {
    test('Case 1', () {
      List<int> input = [2, 5, 7];
      int start = 3;
      int end = 30;

      expect(minimumMultiplications(input, start, end), 2);
    });
    test('Case 2', () {
      List<int> input = [3, 4, 65];
      int start = 7;
      int end = 66175;

      expect(minimumMultiplications(input, start, end), 4);
    });
    test('Case 3', () {
      List<int> input = [2, 5, 7];
      int start = 3;
      int end = 105;

      expect(minimumMultiplications(input, start, end), 2);
    });
  });
}
