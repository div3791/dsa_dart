void main(List<String> args) {
  // createGraph(4);
}

class Graph {
  final List<List<int>> _graph = [];

  Graph(int vertex, List<List<int>> edges) {
    for (int i = 0; i < vertex; i++) {
      _graph.add([]);
    }
    if (edges.isNotEmpty) {
      for (int i = 0; i < edges.length; i++) {
        var u = edges[i][0];
        var v = edges[i][1];
        if (u < vertex) _graph[u].add(v);
        if (v < vertex) _graph[v].add(u);
      }
    }
  }

  List<List<int>> get graph {
    return _graph;
  }

  displayGraph() {
    // for (int i = 0; i < graph.length; i++) {
    //   for (int j = 0; j < graph[i].length; j++) {
    //     print('$i=>${graph[i][j]}');
    //   }
    // }
    print(_graph);
  }
}

// Map<int, List<Edge<int>>> createGraph(int vertex) {
//   Map<int, List<Edge<int>>> graph = {};

//   for (int i = 0; i < vertex; i++) {
//     graph.addAll({i: []});
//   }

//   graph[0]?.add(Edge(0, 2));

//   graph[1]?.add(Edge(1, 2));
//   graph[1]?.add(Edge(1, 3));

//   graph[2]?.add(Edge(2, 0));
//   graph[2]?.add(Edge(2, 1));
//   graph[2]?.add(Edge(2, 3));

//   graph[3]?.add(Edge(3, 1));
//   graph[3]?.add(Edge(3, 2));

//   return graph;
// }

// List<int> getConnectedNodes(Map<int, List<Edge<int>>> graph, int node) {
//   List<int> result = [];

//   if (node < 0 || node > graph.length - 1) return [];

//   for (int i = 0; i < graph[node]!.length; i++) {
//     result.add(graph[node]![i].dest!);
//   }
//   return result;
// }

// class Edge<T> {
//   T? src;
//   T? dest;

//   Edge([this.src, this.dest]);
// }
