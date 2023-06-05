import 'package:test/test.dart';

import '../../bin/graph/is_undirected_cycle.dart';

void main() {
  group('Is undirected cycle presents', () {
    test('Cycle check 1', () {
      int V = 5;
      List<List<int>> adj = [
        [1],
        [0, 2, 4],
        [1, 3],
        [2, 4],
        [1, 3]
      ];

      expect(isCycled(adj, V), true);
    });
    test('Cycle check 2', () {
      int V = 4;
      List<List<int>> adj = [
        [],
        [2],
        [1, 3],
        [2]
      ];

      expect(isCycled(adj, V), false);
    });
    test('Cycle check 3', () {
      int V = 5;
      List<List<int>> adj = [
        [4, 2],
        [1, 2],
        [2, 3],
      ];

      expect(isCycled(adj, V), false);
    });
  });
}
