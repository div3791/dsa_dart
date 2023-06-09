import 'package:test/test.dart';

import '../../bin/graph/flood_fill.dart';

void main() {
  group('Flood fill', () {
    test('case 1', () {
      var input = [
        [1, 1, 1],
        [1, 1, 0],
        [1, 0, 1]
      ];
      expect(floodFill(input, 1, 1, 2), [
        [2, 2, 2],
        [2, 2, 0],
        [2, 0, 1]
      ]);
    });

    test('case 2', () {
      var input = [
        [0, 0, 0],
        [0, 0, 0]
      ];
      expect(floodFill(input, 0, 0, 0), [
        [0, 0, 0],
        [0, 0, 0]
      ]);
    });
  });
}
