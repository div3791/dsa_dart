/*
Search an element from sorted array/list
*/

int binarySearch(List<int> nums, int target) {
  if (nums.isEmpty) return -1;

  int start = 0;
  int end = nums.length - 1;

  while (start <= end) {
    int mid = (start + (end - start) / 2).floor();
    if (nums[mid] == target) return mid;

    if (target > nums[mid]) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }

  return -1;
}
