import 'dart:collection';

int minimumMultiplications(List<int> arr, int start, int end) {
  Queue<Pair> queue = ListQueue();
  List<int> distances = List.filled(100000, 100000);
  int mod = 100000;

  queue.add(Pair(start, 0));

  while (queue.isNotEmpty) {
    Pair item = queue.first;
    int node = item.node;
    int steps = item.steps;

    queue.removeFirst();

    for (int i in arr) {
      int num = (i * node) % mod;
      if (steps + 1 < distances[num]) {
        distances[num] = steps + 1;
        if (num == end) return steps + 1;
        queue.add(Pair(num, steps + 1));
      }
    }
  }

  return -1;
}

class Pair {
  int node;
  int steps;

  Pair(this.node, this.steps);
}
