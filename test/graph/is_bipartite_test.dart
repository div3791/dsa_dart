import 'package:test/test.dart';

import '../../bin/graph/is_bipartite.dart';

void main() {
  group('Check if graph is bipartite', () {
    test('Case 1', () {
      var input = [
        [1, 2, 3],
        [0, 2],
        [0, 1, 3],
        [0, 2]
      ];

      expect(isBipartite(input), false);
    });
    test('Case 2', () {
      var input = [
        [1, 3],
        [0, 2],
        [1, 3],
        [0, 2]
      ];

      expect(isBipartite(input), true);
    });
  });
}
