// class Node {
//   int data;
//   Node? left;
//   Node? right;

//   Node(this.data);
// }

// class BinarySearchTree {
//   Node? root;

//   void insert(int data) {
//     root = _insert(root, data);
//   }

//   Node? _insert(Node? node, int data) {
//     if (node == null) {
//       node = Node(data);
//     } else {
//       if (data <= node.data) {
//         node.left = _insert(node.left, data);
//       } else {
//         node.right = _insert(node.right, data);
//       }
//     }
//     return node;
//   }

//   int findMin() {
//     var node = root;
//     while (node!.left != null) {
//       node = node.left;
//     }
//     return node.data;
//   }

//   int findMax() {
//     var node = root;
//     while (node!.right != null) {
//       node = node.right;
//     }
//     return node.data;
//   }
// }
