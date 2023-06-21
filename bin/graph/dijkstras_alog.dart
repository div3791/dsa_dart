import 'dart:collection';

import 'maximum_multiplications_to_reach_end.dart';

List<int> dijkstra(int V, List<List<List<int>>> adj, int S) {
  List<int> distance = List.filled(V, 10000000);
  Queue<Pair> queue = ListQueue();
  distance[S] = 0;

  queue.add(Pair(S, 0));

  while (queue.isNotEmpty) {
    Pair p = queue.first;
    int dist = p.steps;
    int node = p.node;
    queue.removeFirst();

    for (List<int> item in adj[node]) {
      int wt = item[1];
      int adjNode = item[0];

      if (dist + wt < distance[adjNode]) {
        distance[adjNode] = dist + wt;
        queue.add(Pair(adjNode, distance[adjNode]));
      }
    }
  }

  return distance;
}
