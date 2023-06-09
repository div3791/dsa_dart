int numEnclaves(List<List<int>> grid) {
  int n = grid.length;
  int m = grid[0].length;

  void dfs(int i, int j) {
    if (!(i >= 0 &&
        i < grid.length &&
        j >= 0 &&
        j < grid[0].length &&
        grid[i][j] == 1)) {
      return;
    }

    grid[i][j] = -1;

    dfs(i + 1, j);
    dfs(i - 1, j);
    dfs(i, j + 1);
    dfs(i, j - 1);
  }

  for (int i = 0; i < n; i++) {
    if (grid[i][0] != 0) {
      dfs(i, 0);
    }

    if (grid[i][m - 1] != 0) {
      dfs(i, m - 1);
    }
  }

  for (int i = 0; i < m; i++) {
    if (grid[0][i] != 0) {
      dfs(0, i);
    }

    if (grid[n - 1][i] != 0) {
      dfs(n - 1, i);
    }
  }

  int count = 0;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      if (grid[i][j] == 1) {
        count++;
      }
    }
  }

  return count;
}
