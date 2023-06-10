import 'package:test/test.dart';

import '../../bin/graph/course_schedule.dart';

void main() {
  group('Is directed cycle presents', () {
    test('Cycle check 1', () {
      int V = 2;
      List<List<int>> adj = [
        [1, 0]
      ];

      expect(canFinish(V, adj), true);
    });
  });
}
