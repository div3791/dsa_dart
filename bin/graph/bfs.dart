import 'dart:collection';

List<int> BFS(int vertex, List<List<int>> edges) {
  Map<int, List<int>> adjList = <int, List<int>>{};
  for (int i = 0; i < vertex; i++) {
    adjList.putIfAbsent(i, () => []);
  }
  List<int> result = [];
  List<bool> visited = List.filled(vertex, false);

  prepareAdjList(adjList, edges);

  for (int i = 0; i < vertex; i++) {
    if (visited[i] == false) {
      bfs(vertex, adjList, visited, result, i);
    }
  }

  return result;
}

prepareAdjList(Map<int, List<int>> adjList, List<List<int>> edges) {
  for (int i = 0; i < edges.length; i++) {
    int u = edges[i].first;
    int v = edges[i][1];
    adjList[u]?.add(v);
    adjList[v]?.add(u);
  }
}

bfs(
  int vertex,
  Map<int, List<int>> adjList,
  List<bool> visited,
  List<int> result,
  int node,
) {
  Queue<int> queue = ListQueue();
  queue.add(node);

  while (queue.isNotEmpty) {
    int front = queue.first;
    queue.removeFirst();
    if (visited[front] == false) {
      result.add(front);
      visited[front] = true;
      for (int i = 0; i < adjList[front]!.length; i++) {
        if (adjList[front]![i] < visited.length &&
            visited[adjList[front]![i]] == false) {
          queue.add(adjList[front]![i]);
        }
      }
    }
  }
}
