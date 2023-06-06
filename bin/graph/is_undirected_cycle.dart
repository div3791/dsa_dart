import 'dart:collection';

bool isCycled(List<List<int>> adj, int V) {
  List<bool> visited = List.filled(V, false);
  // for (int i = 0; i < V; i++) {
  //   visited.add(false);
  // }
  for (int i = 0; i < V; i++) {
    if (!visited[i]) {
      bool temp = _getCycleWithDfs(adj, visited, i, -1);
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
    int item = queue.first;
    queue.removeFirst();

    for (int j = 0; j < adj[item].length; j++) {
      int i = adj[item][j];
      if (visited[i] && i != parent[item]) {
        return true;
      } else if (!visited[i]) {
        queue.add(i);
        visited[i] = true;
        parent[i] = item;
      }
    }
  }

  return false;
}

bool _getCycleWithDfs(
    List<List<int>> adj, List<bool> visited, int current, int parent) {
  visited[current] = true;
  for (int i in adj[current]) {
    if (!visited[i]) {
      if (_getCycleWithDfs(adj, visited, i, current)) {
        return true;
      }
    } else if (parent != i) {
      return true;
    }
  }

  return false;
}
