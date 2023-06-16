import 'package:test/test.dart';

import '../../bin/graph/shortest_path_undirected.dart';

void main() {
  group('Shortest paths from given node in undirected graph', () {
    test('Case 1', () {
      List<List<int>> input = [
        [0, 1],
        [0, 3],
        [3, 4],
        [4, 5],
        [5, 6],
        [1, 2],
        [2, 6],
        [6, 7],
        [7, 8],
        [6, 8]
      ];
      int src = 0;
      int n = 9;
      int m = input.length;
      expect(getShortedPathUndirected(n, m, src, input),
          [0, 1, 2, 1, 2, 3, 3, 4, 4]);
    });
    test('Case 2', () {
      List<List<int>> input = [
        [4, 3]
      ];
      int src = 1;
      int n = 7;
      int m = 1;
      expect(getShortedPathUndirected(n, m, src, input),
          [-1, 0, -1, -1, -1, -1, -1]);
    });
  });
}
