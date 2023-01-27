void main() {
  BinaryTree tree = BinaryTree();
  tree.insert(10);
  tree.insert(8);
  tree.insert(11);
  tree.insert(9);
  tree.insert(4);


  tree.inOrder();
  print('');
  tree.preOrder();
  print('');
  tree.postOrder();
}

class Node {
  int data;
  Node? left, right;

  Node(this.data);
}

class BinaryTree {
  Node? root;
  void insert(int data) {
    Node? currentNode = root;

    if (currentNode == null) {
      root = Node(data);
      return;
    } else {
      while (true) {
        if (data < currentNode!.data) {
          if (currentNode.left == null) {
            currentNode.left = Node(data);
            break;
          } else {
            currentNode = currentNode.left!;
          }
        } else {
          if (currentNode.right == null) {
            currentNode.right = Node(data);
            break;
          } else {
            currentNode = currentNode.right!;
          }
        }
      }
    }
  }

  bool contains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data < currentNode.data) {
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void remove(int data) {
    removeHelper(data, root!, null);
  }

  void removeHelper(int data, Node currentNode, Node? parentNode) {
    while (currentNode != null) {
      if (data < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left!;
      } else if (data > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right!;
      } else {
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getMinValue(currentNode.right!);
          removeHelper(currentNode.data, currentNode.right!, currentNode);
        } else {
          if (parentNode == null) {
            if (currentNode.right == null) {
              root = currentNode.left!;
            } else {
              root = currentNode.right!;
            }
          } else {
            if (parentNode.left == currentNode) {
              if (currentNode.right == null) {
                parentNode.left = currentNode.left;
              } else {
                parentNode.left = currentNode.right!;
              }
            } else {
              if (currentNode.right == null) {
                parentNode.right = currentNode.left;
              } else {
                parentNode.right = currentNode.right!;
              }
            }
          }
        }
        break;
      }
    }
  }

  int getMinValue(Node currentNode) {
    if (currentNode.left == null) {
      return currentNode.data;
    } else {
      return getMinValue(currentNode.left!);
    }
  }

  void inOrder() {
    inOrderHelper(root);
  }

  //left--root--right
  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  void preOrder() {
    preOrderHelper(root);
  }

  //root--left--right
  void preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  void postOrder() {
    postOrderHelper(root);
  }

  //left--right--root
  void postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data);
    }
  }
}
