import 'package:test/test.dart';

import '../../bin/graph/topological_sort.dart';

void main() {
  group('Topological sort graph', () {
    test('Case 1', () {
      var input = [
        [5, 0],
        [4, 0],
        [5, 2],
        [4, 1],
        [2, 3],
        [3, 1],
      ];
      var vertex = 6;
      expect(topoSort(vertex, input), [0, 5, 3, 1, 4, 2]);
    });
  });
}
