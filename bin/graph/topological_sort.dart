List<int> topoSort(int V, List<List<int>> adj) {
  List<int> ans = [];
  List<bool> visited = List.filled(V, false);
  List<int> stack = [];

  for (int i = 0; i < adj.length; i++) {
    if (!visited[i]) {
      dfs(i, visited, adj, stack);
    }
  }

  while (stack.isNotEmpty) {
    ans.add(stack.last);
    stack.removeLast();
  }

  return ans;
}

void dfs(int node, List<bool> visited, List<List<int>> adj, List<int> stack) {
  visited[node] = true;
  for (int i in adj[node]) {
    if (!visited[i]) {
      dfs(i, visited, adj, stack);
    }
  }
  stack.add(node);
}
