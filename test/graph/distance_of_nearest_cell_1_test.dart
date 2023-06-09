import 'package:test/test.dart';

import '../../bin/graph/distance_of_nearest_cell_1.dart';

void main() {
  group('Distance matrix for cell', () {
    test('case 1', () {
      var input = [
        [0, 0, 0],
        [0, 1, 0],
        [0, 0, 0]
      ];
      expect(updateDistance(input), [
        [0, 0, 0],
        [0, 1, 0],
        [0, 0, 0]
      ]);
    });

    test('case 2', () {
      var input = [
        [0, 0, 0],
        [0, 1, 0],
        [1, 1, 1]
      ];
      expect(updateDistance(input), [
        [0, 0, 0],
        [0, 1, 0],
        [1, 2, 1]
      ]);
    });
  });
}
