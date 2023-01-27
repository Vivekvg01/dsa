// List<int> riverSizes(List<List<int>> matrix) {
//   // Initialize a visited matrix to keep track of visited cells
//   var visited = List.generate(matrix.length, (_) => List(matrix[0].length), growable: false);
//   var sizes = [];

//   // Traverse through the matrix
//   for (var i = 0; i < matrix.length; i++) {
//     for (var j = 0; j < matrix[i].length; j++) {
//       if (matrix[i][j] == 1 && !visited[i][j]) {
//         var size = dfs(matrix, visited, i, j);
//         sizes.add(size);
//       }
//     }
//   }

//   return sizes;
// }

// int dfs(List<List<int>> matrix, List<List<int>> visited, int i, int j) {
//   // Check if the current cell is out of matrix boundary or has been visited
//   if (i < 0 || i >= matrix.length || j < 0 || j >= matrix[i].length || matrix[i][j] != 1 || visited[i][j]) {
//     return 0;
//   }

//   visited[i][j] = true;
//   var size = 1;

//   // Perform DFS on the current cell's neighbours
//   size += dfs(matrix, visited, i - 1, j); // Top
//   size += dfs(matrix, visited, i + 1, j); // Bottom
//   size += dfs(matrix, visited, i, j - 1); // Left
//   size += dfs(matrix, visited, i, j + 1); // Right

//   return size;
// }