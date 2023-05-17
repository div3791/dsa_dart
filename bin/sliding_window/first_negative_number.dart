List<int> getFirstNegativeNumberInWindow(List<int> arr, int window) {
  if (arr.isEmpty) return [];

  int i = 0;
  int j = 0;
  List<int> queue = [];
  List<int> result = [];
  while (j < arr.length) {
    if (arr[j] < 0) queue.add(arr[j]);

    if (j - i + 1 < window) {
      j++;
    } else if (j - i + 1 == window) {
      if (queue.isEmpty) {
        result.add(0);
      } else {
        result.add(queue[0]);
        if (arr[i] == queue[0]) {
          queue.removeAt(0);
        }
      }

      i++;
      j++;
    }
  }
  return result;
}
