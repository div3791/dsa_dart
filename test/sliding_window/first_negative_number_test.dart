import 'dart:math';

import 'package:test/test.dart';

import '../../bin/sliding_window/first_negative_number.dart';

void main() {
  test(
    'first negative number in each window',
    () {
      List<int> arr = [12, -1, -7, 8, -15, 30, 16, 28];
      int window = 3;
      expect(
        getFirstNegativeNumberInWindow(arr, window),
        [-1, -1, -7, -15, -15, 0],
      );
    },
  );

  test(
    'first negative number in each window empty array',
    () {
      List<int> arr = [];
      int window = 3;
      expect(
        getFirstNegativeNumberInWindow(arr, window),
        [],
      );
    },
  );
}
