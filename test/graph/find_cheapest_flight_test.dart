import 'package:test/test.dart';

import '../../bin/graph/find_cheapest_flight.dart';

void main() {
  group('Cheapest flight', () {
    test('case 1', () {
      var input = [
        [0, 1, 100],
        [1, 2, 100],
        [2, 0, 100],
        [1, 3, 600],
        [2, 3, 200]
      ];

      int src = 0;
      int dst = 3;
      int k = 1;

      expect(findCheapestPrice(4, input, src, dst, k), 700);
    });

    test('case 2', () {
      var input = [
        [0, 1, 100],
        [1, 2, 100],
        [0, 2, 500]
      ];
      int src = 0;
      int dst = 2;
      int k = 1;
      expect(findCheapestPrice(3, input, src, dst, k), 200);
    });

    test('case 3', () {
      var input = [
        [0, 1, 100],
        [1, 2, 100],
        [0, 2, 500]
      ];
      int src = 0;
      int dst = 2;
      int k = 0;
      expect(findCheapestPrice(3, input, src, dst, k), 500);
    });
  });
}
