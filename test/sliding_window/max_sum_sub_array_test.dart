import 'package:test/test.dart';

import '../../bin/sliding_window/sliding_window.dart';

void main() {
  test(
    'find maximum sum of sub array for given window size ',
    () {
      List<int> arr = [1, 5, 1, 3, 2, -1];
      int window = 3;
      expect(maxSumSubArray(arr, window), 9);
    },
  );
}
