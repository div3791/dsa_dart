List<List<String>> solve(List<List<String>> grid) {
  int n = grid.length;
  int m = grid[0].length;

  for (int i = 0; i < n; i++) {
    if (grid[i][0] != 'X') {
      _dfs(i, 0, grid);
    }

    if (grid[i][m - 1] != 'X') {
      _dfs(i, m - 1, grid);
    }
  }

  for (int i = 0; i < m; i++) {
    if (grid[0][i] != 'X') {
      _dfs(0, i, grid);
    }

    if (grid[n - 1][i] != 'X') {
      _dfs(n - 1, i, grid);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      if (grid[i][j] == 'O') {
        grid[i][j] = 'X';
        continue;
      }
      if (grid[i][j] == 'D') {
        grid[i][j] = 'O';
        continue;
      }
    }
  }

  return grid;
}

void _dfs(int i, int j, List<List<String>> grid) {
  if (!(i >= 0 &&
      j >= 0 &&
      i < grid.length &&
      j < grid[0].length &&
      grid[i][j] == 'O')) {
    return;
  }
  grid[i][j] = 'D';
  _dfs(i + 1, j, grid);
  _dfs(i, j + 1, grid);
  _dfs(i - 1, j, grid);
  _dfs(i, j - 1, grid);
}
