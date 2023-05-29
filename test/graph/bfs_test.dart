import 'package:dsa_dart/graph.dart';
import 'package:test/test.dart';

import '../../bin/graph/bfs.dart';

void main() {
  test('Breadth First Search Graph', () {
    var graph = createGraph(4);
    var output = BFS(graph, 4);
    expect(output, [0, 2, 1, 3]);
  });
}
