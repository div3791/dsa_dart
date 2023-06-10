bool canFinish(int numCourses, List<List<int>> prerequisites) {
  List<bool> visited = List.filled(numCourses, false);
  List<int> stack = [];
  List<int> ans = [];

  for (int i = 0; i < numCourses; i++) {
    if (!visited[i]) {
      dfs(i, visited, stack, prerequisites);
    }
  }

  while (stack.isNotEmpty) {
    ans.add(stack.last);
    stack.removeLast();
  }

  return ans.length == stack.length;
}

dfs(
  int node,
  List<bool> visited,
  List<int> stack,
  List<List<int>> prerequired,
) {
  visited[node] = true;

  for (int i = 0; i < prerequired[node].length; i++) {
    int j = prerequired[node][i];
    if (!visited[j]) {
      dfs(j, visited, stack, prerequired);
    }
  }

  stack.add(node);
}
