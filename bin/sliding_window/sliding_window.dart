import 'dart:math' as math;

int maxSumSubArray(List<int> array, int window) {
  double result = double.negativeInfinity;
  int sum = 0;
  int i = 0, j = 0;

  while (j < array.length) {
    sum += array[j];

    if (j - i + 1 < window) {
      j++;
    } else if (j - i + 1 == window) {
      result = math.max(sum.toDouble(), result);
      sum -= array[i];
      i++;
      j++;
    }
  }

  return result.floor();
}
