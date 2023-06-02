import 'package:test/test.dart';

import '../../bin/graph/bfs.dart';

void main() {
  group('BFS', () {
    test('BFS Travesel 1', () {
      int vertex = 4;
      var edges = [
        [4, 4],
        [0, 1],
        [0, 3],
        [1, 2],
        [2, 3],
      ];
      expect(BFS(vertex, edges), [0, 1, 3, 2]);
    });
    test('BFS Travesel 2', () {
      int vertex = 4;
      var edges = [
        [4, 3],
        [0, 1],
        [0, 3],
        [1, 3],
      ];
      expect(BFS(vertex, edges), [0, 1, 3, 2]);
    });
    test('BFS Travesel 3', () {
      int vertex = 5;
      var edges = [
        [5, 4],
        [0, 1],
        [0, 2],
        [0, 3],
        [2, 4],
      ];
      expect(BFS(vertex, edges), [0, 1, 2, 3, 4]);
    });
    test('BFS Travesel 4', () {
      int vertex = 3;
      var edges = [
        [3, 2],
        [0, 1],
        [0, 2],
      ];
      expect(BFS(vertex, edges), [0, 1, 2]);
    });
  });
}
