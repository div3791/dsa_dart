import 'package:test/test.dart';

import '../../bin/graph/dfs.dart';

void main() {
  group('DFS', () {
    test('DFS Travesel 1', () {
      int vertex = 5;
      var adj = [
        [2, 3, 1],
        [0],
        [0, 4],
        [0],
        [2]
      ];
      expect(
        DFS(vertex, adj),
        [0, 2, 4, 3, 1],
      );
    });
    test('DFS Travesel 2', () {
      int vertex = 4;
      var adj = [
        [1, 3],
        [2, 0],
        [1],
        [0]
      ];
      expect(
        DFS(vertex, adj),
        [0, 1, 2, 3],
      );
    });
  });
}
