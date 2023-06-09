import 'package:test/test.dart';

import '../../bin/graph/replace_o_with_x.dart';

void main() {
  group('Replace O with X', () {
    test('Case 1', () {
      var input = [
        ["X", "X", "X", "X"],
        ["X", "O", "O", "X"],
        ["X", "X", "O", "X"],
        ["X", "O", "X", "X"]
      ];
      var output = [
        ["X", "X", "X", "X"],
        ["X", "X", "X", "X"],
        ["X", "X", "X", "X"],
        ["X", "O", "X", "X"],
      ];
      expect(solve(input), output);
    });

    test('Case 2', () {
      var input = [
        ["X"]
      ];
      var output = [
        ["X"]
      ];

      expect(solve(input), output);
    });
    test('Case 3', () {
      var input = [
        ["X", "O", "X", "O", "X", "O"],
        ["O", "X", "O", "X", "O", "X"],
        ["X", "O", "X", "O", "X", "O"],
        ["O", "X", "O", "X", "O", "X"]
      ];
      var output = [
        ["X", "O", "X", "O", "X", "O"],
        ["O", "X", "X", "X", "X", "X"],
        ["X", "X", "X", "X", "X", "O"],
        ["O", "X", "O", "X", "O", "X"]
      ];

      expect(solve(input), output);
    });
  });
}
