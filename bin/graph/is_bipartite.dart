import 'dart:collection';

bool isBipartite(List<List<int>> graph) {
  List<int> colored = List.filled(graph.length, -1);

  for (int i = 0; i < graph.length; i++) {
    if (colored[i] == -1) {
      // if (bfs(i, graph, colored) == false) {
      //   return false;
      // }
      colored[i] = 1;
      if (dfs(i, graph, colored) == false) {
        return false;
      }
    }
  }

  return true;
}

bool bfs(node, graph, colored) {
  Queue<int> queue = ListQueue();
  queue.add(node);
  colored[node] = 0;

  while (queue.isNotEmpty) {
    int item = queue.removeFirst();
    for (int i in graph[item]) {
      if (colored[i] == -1) {
        colored[i] = 1 - colored[item];
        queue.add(i);
      } else if (colored[i] == colored[item]) {
        return false;
      }
    }
  }

  return true;
}

bool dfs(int node, List<List<int>> graph, List<int> colored) {
  for (int i in graph[node]) {
    if (colored[i] == -1) {
      colored[i] = 1 - colored[node];
      if (!dfs(i, graph, colored)) return false;
    } else if (colored[i] == colored[node]) {
      return false;
    }
  }
  return true;
}
