class Graph {
  final List<List<int>> _graph = [];
  Graph(int vertex, List<List<int>> edges) {
    for (int i = 0; i < vertex; i++) {
      _graph.add([]);
    }
    for (int i = 0; i < edges.length; i++) {
      int u = edges[i][0];
      int v = edges[i][1];
      if (u < vertex) {
        _graph[u].add(v);
      }
      if (v < vertex) {
        _graph[v].add(u);
      }
    }
  }

  List<List<int>> get graph => _graph;
}
