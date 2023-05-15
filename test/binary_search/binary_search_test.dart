import 'package:dsa_dart/binary_search.dart';
import 'package:test/test.dart';

void main() {
  group(
    'binary searh - get index of found element. return -1 if element is not found',
    () {
      test(
        '7-2',
        () {
          expect(binarySearch([5, 8, 9, 10, 15, 16, 20], 9), 2);
        },
      );
      test(
        '7--1',
        () {
          expect(binarySearch([5, 8, 9, 10, 15, 16, 20], 3), -1);
        },
      );
      test(
        '0--1',
        () {
          expect(binarySearch([], 3), -1);
        },
      );
      test(
        '2-1',
        () {
          expect(binarySearch([1, 3], 3), 1);
        },
      );
      test(
        '4-1',
        () {
          expect(binarySearch([-10, -8, -7, 3], -8), 1);
        },
      );
    },
  );
}
