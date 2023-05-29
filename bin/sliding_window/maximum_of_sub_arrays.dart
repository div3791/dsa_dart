import 'dart:math';

List<int> maximumOfSubArrays(List<int> arr, int window) {
  int i = 0, j = 0;
  List<int> queue = [];
  List<int> result = [];
  int maximum = double.negativeInfinity.floor();

  while (j < arr.length) {
    maximum = max(arr[j], maximum);

    if (j - i + 1 < window) {
      j++;
    } else if (j - i + 1 == window) {
      result.add(maximum);
    }
  }

  return result;
}
