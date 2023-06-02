List<int> DFS(int vertex, List<List<int>> adj) {
  // List<List<int>> adjList = [];
  // for (int i = 0; i < vertex; i++) {
  //   adjList.add([]);
  // }
  List<int> result = [];
  List<bool> visited = List.filled(vertex, false);

  for (int i = 0; i < vertex; i++) {
    if (!visited[i]) {
      dfs(adj, visited, i, result);
    }
  }

  return result;
}

prepareAdjList(Map<int, List<int>> adjList, List<List<int>> edges) {
  for (int i = 0; i < edges.length; i++) {
    int u = edges[i].first;
    int v = edges[i][1];
    adjList[u]?.add(v);
    adjList[v]?.add(u);
  }
}

dfs(
  List<List<int>> adjList,
  List<bool> visited,
  int node,
  List<int> result,
) {
  result.add(node);
  visited[node] = true;

  for (int i = 0; i < adjList[node].length; i++) {
    if (adjList[node][i] < visited.length && !visited[adjList[node][i]]) {
      dfs(adjList, visited, adjList[node][i], result);
    }
  }
}
