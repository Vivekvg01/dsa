class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    root = _insert(root, data);
  }

  Node? _insert(Node? node, int data) {
    if (node == null) {
      node = Node(data);
    } else {
      if (data <= node.data) {
        node.left = _insert(node.left, data);
      } else {
        node.right = _insert(node.right, data);
      }
    }
    return node;
  }

  int findSum() {
    return _findSum(root);
  }

  int _findSum(Node? node) {
    if (node == null) {
      return 0;
    } else {
      return node.data + _findSum(node.left) + _findSum(node.right);
    }
  }
}