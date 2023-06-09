import 'package:test/test.dart';

import '../../bin/graph/num_of_provices.dart';

void main() {
  group('Number of provinces', () {
    test('Case 1', () {
      var input = [
        [1, 1, 0],
        [1, 1, 0],
        [0, 0, 1]
      ];
      expect(numOfProvinces(input), 2);
    });
    test('Case 2', () {
      var input = [
        [1, 0, 0],
        [0, 1, 0],
        [0, 0, 1]
      ];
      expect(numOfProvinces(input), 3);
    });
  });
}
