int numOfProvinces(List<List<int>> grid) {
  int count = 0;
  int n = grid.length;
  List<bool> visited = List.filled(n, false);

  void dfs(node) {
    visited[node] = true;
    for (int i = 0; i < n; i++) {
      if (grid[node][i] == 1 && !visited[i] && node != i) {
        dfs(i);
      }
    }
  }

  for (int i = 0; i < n; i++) {
    if (!visited[i]) {
      count++;
      dfs(i);
    }
  }

  return count;
}
