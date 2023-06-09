import 'dart:collection';

List<List<int>> updateDistance(List<List<int>> matrix) {
  int n = matrix.length;
  int m = matrix[0].length;

  Queue<Node> queue = ListQueue();

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      if (matrix[i][j] == 0) {
        queue.add(Node(i, j, 0));
      } else {
        matrix[i][j] = -1;
      }
    }
  }

  List<int> delRow = [-1, 1, 0, 0];
  List<int> delCol = [0, 0, -1, 1];

  while (queue.isNotEmpty) {
    Node item = queue.first;
    int row = item.first;
    int col = item.second;
    int distance = item.third;
    queue.removeFirst();

    for (int i = 0; i < 4; i++) {
      int nrow = row + delRow[i];
      int ncol = col + delCol[i];

      if (nrow < 0 ||
          nrow >= n ||
          ncol < 0 ||
          ncol >= m ||
          matrix[nrow][ncol] != -1) {
        continue;
      }

      matrix[nrow][ncol] = distance + 1;
      queue.add(Node(nrow, ncol, distance + 1));
    }
  }

  return matrix;
}

class Node {
  int first;
  int second;
  int third;

  Node(this.first, this.second, this.third);
}
