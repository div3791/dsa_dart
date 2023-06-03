import 'dart:collection';

bool isCycled(List<List<int>> adj, int V) {
  List<bool> visited = List.filled(V, false);
  for (int i = 0; i < V; i++) {
    if (!visited[i]) {
      bool temp = _getCycle(i, visited, adj);
      if (temp) {
        return true;
      }
    }
  }

  return false;
}

bool _getCycle(int node, List<bool> visited, List<List<int>> adj) {
  Map<int, int> parent = {};
  parent[node] = -1;
  visited[node] = true;

  Queue<int> queue = ListQueue<int>();
  queue.add(node);

  while (queue.isNotEmpty) {
    int item = queue.removeFirst();

    for (int i = 0; i < adj[item].length; i++) {
      if (adj[item][i] < visited.length &&
          visited[adj[item][i]] &&
          adj[item][i] != parent[item]) {
        return true;
      } else if (adj[item][i] < visited.length && !visited[adj[item][i]]) {
        queue.add(adj[item][i]);
        visited[adj[item][i]] = true;
        parent[adj[item][i]] = item;
      }
    }
  }

  return false;
}