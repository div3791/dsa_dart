import 'package:test/test.dart';

import '../../bin/graph/dijkstras_alog.dart';

void main() {
  group('Dijkstra algorithm', () {
    test('Case 1', () {
      var input = [
        [
          [1, 9]
        ],
        [
          [0, 9]
        ]
      ];

      int V = 2;
      int S = 0;

      expect(dijkstra(V, input, S), [0, 9]);
    });
    test('Case 2', () {
      var input = [
        [
          [1, 1],
          [2, 6]
        ],
        [
          [2, 3],
          [0, 1]
        ],
        [
          [1, 3],
          [0, 6]
        ]
      ];
      int V = 3;
      int S = 2;
      expect(dijkstra(V, input, S), [4, 3, 0]);
    });
  });
}
