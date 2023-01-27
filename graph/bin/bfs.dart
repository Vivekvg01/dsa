class Graph {
  final List<List<int>> adjList;

  Graph(int vertices) : adjList = List.generate(vertices, (_) => []);

  void addEdge(int source, int destination) {
    adjList[source].add(destination);
    adjList[destination].add(source);
  }

  void bfs(int start) {
    final visited = <int>{};

    final queue = <int>[];
    queue.add(start);

    while (queue.isNotEmpty) {
      final vertex = queue.removeAt(0);

      if (!visited.contains(vertex)) {
        visited.add(vertex);

        print(vertex);
      }

      for (final neighbor in adjList[vertex]) {
        if (!visited.contains(neighbor)) {
          queue.add(neighbor);    
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

  graph.bfs(0);
}
