class Graph {
  final List<List<int>> adjList;

  Graph(int vertices) : adjList = List.generate(vertices, (_) => []);

  void addEdge(int source, int destination) {
    adjList[source].add(destination);
    adjList[destination].add(source);
  }

  void dfs(int start) {
    final visited = <int>{};

    final stack = <int>[];
    stack.add(start);

    while (stack.isNotEmpty) {
      final vertex = stack.removeLast();

      if (!visited.contains(vertex)) {
        visited.add(vertex);

        print(vertex);
      }

      for (final neighbor in adjList[vertex]) {
        if (!visited.contains(neighbor)) {
          stack.add(neighbor);
        }
      }
    }
  }
}

void main() {
  final graph = Graph(5);
  graph.addEdge(0, 1);
  graph.addEdge(0, 4);
  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(1, 4);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.dfs(0);
}
