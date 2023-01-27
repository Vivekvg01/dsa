class Graph {
  final int numVertices;
  late List<List<int>> adjacencyMatrix;

  Graph(this.numVertices) {
    adjacencyMatrix =
        List.generate(numVertices, (_) => List.filled(numVertices, 0));
  }

  void addEdge(int u, int v) {
    adjacencyMatrix[u][v] = 1;
    adjacencyMatrix[v][u] = 1;
  }

  void removeEdge(int u, int v) {
    adjacencyMatrix[u][v] = 0;
    adjacencyMatrix[v][u] = 0;
  }

  bool isAdjacent(int u, int v) {
    return adjacencyMatrix[u][v] == 1;
  }
}

void main() {
  Graph graph = Graph(4);

  graph.addEdge(0, 1);

  print(graph.isAdjacent(0, 1));

  graph.removeEdge(0, 1);

  print(graph.isAdjacent(0, 1));
}
