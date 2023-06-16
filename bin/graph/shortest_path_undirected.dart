import 'dart:collection';

List<int> getShortedPathUndirected(
  int n,
  int m,
  int src,
  List<List<int>> edges,
) {
  List<int> distance = List.filled(n, 10000000);

  List<List<int>> adj = [];
  for (int i = 0; i < n; i++) {
    adj.add([]);
  }

  for (int i = 0; i < m; i++) {
    adj[edges[i][0]].add(edges[i][1]);
    adj[edges[i][1]].add(edges[i][0]);
  }

  distance[src] = 0;

  Queue<int> queue = ListQueue();
  queue.add(src);

  while (queue.isNotEmpty) {
    int item = queue.first;
    queue.removeFirst();

    for (int i in adj[item]) {
      if (distance[item] + 1 < distance[i]) {
        distance[i] = distance[item] + 1;
        queue.add(i);
      }
    }
  }

  for (int i = 0; i < n; i++) {
    if (distance[i] == 10000000) {
      distance[i] = -1;
    }
  }

  return distance;
}
