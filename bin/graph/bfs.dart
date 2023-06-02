// Time : O(V+E) or O(n)

import 'dart:collection';

List<int> bfs(
  List<List<int>> graph,
  List<bool> visited,
  List<int> result,
  int start,
) {
  if (graph.isEmpty) return [];

  Queue<int> queue = ListQueue();

  queue.add(start);
  while (queue.isNotEmpty) {
    int current = queue.removeFirst();
    if (!visited[current]) {
      result.add(current);
      visited[current] = true;
      for (int i in graph[current]) {
        if (!visited[i]) {
          queue.add(i);
        }
      }
      // for (int i = 0; i < graph[current].length; i++) {
      //   if (!visited[i]) {
      //     queue.add(graph[current][i]);
      //   }
      // }
    }
  }

  return result;
}

List<int> BFS(int V, List<List<int>> graph) {
  List<int> result = [];
  List<bool> visited = List.filled(V, false);
  for (int i = 0; i < V; i++) {
    if (!visited[i]) {
      bfs(graph, visited, result, i);
    }
  }
  return result;
}
