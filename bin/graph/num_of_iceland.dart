int numOfIcelands(List<List<String>> grid) {
  int count = 0;
  int n = grid.length;
  int m = grid[0].length;

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      if (grid[i][j] == '1') {
        count++;
        _dfs(n, m, grid, i, j);
      }
    }
  }
  return count;
}

void _dfs(n, m, grid, i, j) {
  if (i < 0 || i >= n || j < 0 || j >= m || grid[i][j] == '0') {
    return;
  }

  grid[i][j] = '0';

  _dfs(n, m, grid, i + 1, j);
  _dfs(n, m, grid, i - 1, j);
  _dfs(n, m, grid, i, j + 1);
  _dfs(n, m, grid, i, j - 1);
}
