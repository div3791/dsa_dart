import 'package:test/test.dart';

import '../../bin/graph/shortest_path_dag.dart';

void main() {
  group('Shortest paths from 0th node', () {
    test('Case 1', () {
      List<List<int>> input = [
        [0, 1, 2],
        [0, 4, 1],
        [4, 5, 4],
        [4, 2, 2],
        [1, 2, 3],
        [2, 3, 6],
        [5, 3, 1],
      ];

      int N = 6;
      int M = 7;
      expect(getShortedPath(N, M, input), [0, 2, 3, 6, 1, 5]);
    });
    test('Case 2', () {
      List<List<int>> input = [
        [0, 1, 2],
        [2, 1, 2],
        [2, 4, 2],
        [1, 4, 8],
        [1, 3, 6]
      ];
      int N = 5;
      int M = 5;
      expect(getShortedPath(N, M, input), [0, 2, -1, 8, 10]);
    });
  });
}
