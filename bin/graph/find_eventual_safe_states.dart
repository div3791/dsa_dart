List<int> eventualSafeNodes(List<List<int>> graph) {
  List<bool> visited = List.filled(graph.length, false);
  List<bool> pathVisited = List.filled(graph.length, false);
  List<int> result = [];
  List<bool> safeNodes = List.filled(graph.length, false);

  for (int i = 0; i < graph.length; i++) {
    if (!visited[i]) {
      dfs(i, graph, visited, pathVisited, safeNodes);
    }
  }

  for (int i = 0; i < safeNodes.length; i++) {
    if (safeNodes[i]) {
      result.add(i);
    }
  }

  return result;
}

bool dfs(
  int node,
  List<List<int>> graph,
  List<bool> visited,
  List<bool> pathVisited,
  List<bool> safeNodes,
) {
  visited[node] = true;
  pathVisited[node] = true;
  safeNodes[node] = false;

  for (int i in graph[node]) {
    if (!visited[i]) {
      if (dfs(i, graph, visited, pathVisited, safeNodes)) {
        return true;
      }
    }
    if (pathVisited[i]) {
      return true;
    }
  }

  pathVisited[node] = false;
  safeNodes[node] = true;
  return false;
}
