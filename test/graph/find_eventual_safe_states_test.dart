import 'package:test/test.dart';

import '../../bin/graph/find_eventual_safe_states.dart';

void main() {
  group('Eventualy safe states', () {
    test('Case 1', () {
      List<List<int>> input = [
        [1, 2],
        [2, 3],
        [5],
        [0],
        [5],
        [],
        []
      ];

      expect(eventualSafeNodes(input), [2, 4, 5, 6]);
    });
    test('Case 2', () {
      List<List<int>> input = [
        [1, 2, 3, 4],
        [1, 2],
        [3, 4],
        [0, 4],
        []
      ];

      expect(eventualSafeNodes(input), [4]);
    });
  });
}
