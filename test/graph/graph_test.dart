import 'package:dsa_dart/graph.dart';
import 'package:test/test.dart';

void main() {
  group('Graph', () {
    test('should return adjecency list 1', () {
      int vertex = 4;
      List<List<int>> edges = [
        [4, 4],
        [0, 1],
        [0, 3],
        [1, 2],
        [2, 3],
      ];
      var graph = Graph(vertex, edges);
      expect(graph.graph, [
        [1, 3],
        [0, 2],
        [1, 3],
        [0, 2]
      ]);
    });
    test('should return adjecency list 2', () {
      int vertex = 5;
      List<List<int>> edges = [
        [0, 1],
        [1, 2],
        [2, 3],
        [3, 1],
        [3, 4],
        [0, 4],
        [4, 1],
      ];
      var graph = Graph(vertex, edges);
      expect(graph.graph, [
        [1, 4],
        [0, 2, 3, 4],
        [1, 3],
        [2, 1, 4],
        [3, 0, 1]
      ]);
    });
  });
}
