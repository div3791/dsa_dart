import 'package:dsa_dart/graph.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should return graph adjecency list',
    () {
      var graph = Graph(5, [
        [0, 1],
        [1, 2],
        [2, 3],
        [3, 1],
        [3, 4],
        [0, 4],
        [4, 1],
      ]);
      expect(graph.graph, [
        [1, 4],
        [0, 2, 3, 4],
        [1, 3],
        [2, 1, 4],
        [3, 0, 1]
      ]);
    },
  );
}
