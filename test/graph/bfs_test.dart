import 'package:dsa_dart/graph.dart';
import 'package:test/test.dart';

import '../../bin/graph/bfs.dart';

void main() {
  group('BFS', () {
    test('Breadth First Search Graph 1', () {
      var graph = Graph(4, [
        [4, 4],
        [0, 1],
        [0, 3],
        [1, 2],
        [2, 3],
      ]);
      expect(BFS(4, graph.graph), [0, 1, 3, 2]);
    });
    test('Breadth First Search Graph 2', () {
      var graph = Graph(
        11,
        [
          [9, 10],
          [0, 8],
          [1, 6],
          [1, 7],
          [1, 8],
          [5, 8],
          [6, 0],
          [7, 3],
          [7, 4],
          [8, 7],
          [2, 5],
        ],
      );
      expect(BFS(11, graph.graph), [0, 6, 8, 1, 5, 7, 2, 3, 4]);
    });
    test('Breadth First Search Graph 3', () {
      var graph = Graph(
        9,
        [
          [5, 8],
          [0, 1],
          [0, 4],
          [1, 2],
          [2, 0],
          [2, 4],
          [3, 0],
          [3, 2],
          [4, 3],
        ],
      );
      expect(BFS(9, graph.graph), [0, 1, 2, 3, 4]);
    });
    test('Breadth First Search Graph 4', () {
      var graph = Graph(
        6,
        [
          [5, 0],
        ],
      );
      expect(BFS(6, graph.graph), [0, 1, 2, 3, 4]);
    });
  });
}
