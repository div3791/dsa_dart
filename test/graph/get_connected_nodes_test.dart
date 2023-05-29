import 'package:dsa_dart/graph.dart';
import 'package:test/test.dart';

void main() {
  test('should return connected nodes', () {
    var graph = createGraph(4);
    expect(getConnectedNodes(graph, -2), []);
  });
}
