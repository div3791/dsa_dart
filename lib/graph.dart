void main(List<String> args) {
  int vertex = 4;

  Map<int, List<Edge<int>>> graph = {};

  for (int i = 0; i < vertex; i++) {
    graph.addAll({i: []});
  }

  graph[0]?.add(Edge(0, 2));

  graph[1]?.add(Edge(1, 2));
  graph[1]?.add(Edge(1, 3));

  graph[2]?.add(Edge(2, 0));
  graph[2]?.add(Edge(2, 1));
  graph[2]?.add(Edge(2, 3));

  graph[3]?.add(Edge(3, 1));
  graph[3]?.add(Edge(3, 2));

  for (int i = 0; i < graph[3]!.length; i++) {
    Edge edge = graph[3]![i];
    print(edge.dest);
  }
}

class Edge<T> {
  T? src;
  T? dest;

  Edge([this.src, this.dest]);
}
