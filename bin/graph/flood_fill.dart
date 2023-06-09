List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
  int initialColor = image[sr][sc];
  int n = image.length;

  void dfs(i, j) {
    if (i < 0 ||
        i >= n ||
        j < 0 ||
        j >= image[i].length ||
        image[i][j] == color ||
        image[i][j] != initialColor) {
      return;
    }

    image[i][j] = color;

    dfs(i + 1, j);
    dfs(i - 1, j);
    dfs(i, j + 1);
    dfs(i, j - 1);
  }

  dfs(sr, sc);

  return image;
}
