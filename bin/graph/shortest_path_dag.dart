List<int> getShortedPath(int N, int M, List<List<int>> edges) {
  List<int> distances = List.filled(N, 10000000);
  List<List<Pair>> adj = [];

  for (int i = 0; i < N; i++) {
    adj.add(<Pair>[]);
  }

  for (int i = 0; i < M; i++) {
    int u = edges[i][0];
    int v = edges[i][1];
    int wt = edges[i][2];
    adj[u].add(Pair(v, wt));
  }
  List<bool> visited = List.filled(N, false);
  List<int> stack = [];

  for (int i = 0; i < N; i++) {
    if (!visited[i]) {
      topoSort(i, visited, adj, stack);
    }
  }

  distances[0] = 0;

  while (stack.isNotEmpty) {
    int item = stack.last;
    stack.removeLast();

    for (Pair pair in adj[item]) {
      int v = pair.first;
      int wt = pair.second;

      if (distances[item] + wt < distances[v]) {
        distances[v] = distances[item] + wt;
      }
    }
  }

  for (int i = 0; i < distances.length; i++) {
    if (distances[i] == 10000000) {
      distances[i] = -1;
    }
  }

  return distances;
}

void topoSort(
    int node, List<bool> visited, List<List<Pair>> adj, List<int> stack) {
  visited[node] = true;

  for (Pair pair in adj[node]) {
    if (!visited[pair.first]) {
      topoSort(pair.first, visited, adj, stack);
    }
  }

  stack.add(node);
}

class Pair {
  int first;
  int second;

  Pair(this.first, this.second);
}
