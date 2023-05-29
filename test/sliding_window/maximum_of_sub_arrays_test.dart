import 'package:test/test.dart';

import '../../bin/sliding_window/maximum_of_sub_arrays.dart';

void main() {
  test(
    'find maximum in all subarray from given array',
    () {
      List<int> arr = [1, 3, -1, -3, 5, 3, 6, 7];
      int window = 3;
      expect(maximumOfSubArrays(arr, window), []);
    },
  );
}
