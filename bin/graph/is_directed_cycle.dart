bool isDirectedCycle(int V, List<List<int>> adj) {
  List<bool> visited = List.filled(V, false);
  List<bool> pathVisited = List.filled(V, false);

  for (int i = 0; i < V; i++) {
    if (!visited[i]) {
      bool temp = isCycle(adj, visited, pathVisited, i);
      if (temp) {
        return true;
      }
    }
  }

  return false;
}

bool isCycle(
  List<List<int>> adj,
  List<bool> visited,
  List<bool> pathVisited,
  int node,
) {
  visited[node] = true;
  pathVisited[node] = true;
  if (node < adj.length && adj[node] != null) {
    for (int i in adj[node]) {
      if (!visited[i]) {
        if (isCycle(adj, visited, pathVisited, i)) {
          return true;
        }
      } else if (pathVisited[i]) {
        return true;
      }
    }
  }

  pathVisited[node] = false;
  return false;
}
