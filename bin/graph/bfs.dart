// Time : O(V+E) or O(n)

import 'dart:collection';

import 'package:dsa_dart/graph.dart';

List<int> BFS(Map<int, List<Edge<int>>> graph, int V) {
  if (graph.isEmpty) return [];

  List<int> result = [];

  Queue<int> queue = ListQueue();
  List<bool> visited = List.filled(V, false);

  queue.add(graph[0]![0].src!);
  while (queue.isNotEmpty) {
    int current = queue.removeFirst();
    if (!visited[current]) {
      result.add(current);
      visited[current] = true;
      for (int i = 0; i < graph[current]!.length; i++) {
        queue.add(graph[current]![i].dest!);
      }
    }
  }

  return result;
}
