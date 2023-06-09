import 'package:test/test.dart';

import '../../bin/graph/num_of_iceland.dart';

void main() {
  group('Number of icelands', () {
    test('Case 1', () {
      var input = [
        ["1", "1", "1", "1", "0"],
        ["1", "1", "0", "1", "0"],
        ["1", "1", "0", "0", "0"],
        ["0", "0", "0", "0", "0"]
      ];
      expect(numOfIcelands(input), 1);
    });
    test('Case 2', () {
      var input = [
        ["1", "1", "0", "0", "0"],
        ["1", "1", "0", "0", "0"],
        ["0", "0", "1", "0", "0"],
        ["0", "0", "0", "1", "1"]
      ];
      expect(numOfIcelands(input), 3);
    });
  });
}
