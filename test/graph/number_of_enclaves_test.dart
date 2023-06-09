import 'package:test/test.dart';

import '../../bin/graph/number_of_enclave.dart';

void main() {
  group('Number of enclaves', () {
    test('Case 1', () {
      var input = [
        [0, 0, 0, 0],
        [1, 0, 1, 0],
        [0, 1, 1, 0],
        [0, 0, 0, 0]
      ];
      expect(numEnclaves(input), 3);
    });
    test('Case 2', () {
      var input = [
        [0, 1, 1, 0],
        [0, 0, 1, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 0]
      ];
      expect(numEnclaves(input), 0);
    });
  });
}
