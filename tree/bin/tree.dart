void main() {
  BinarySearchTree st = BinarySearchTree();
  st.insert(10);
  st.insert(12);
  bool res = st.contains(10);
  print(res);
}

class Node {
  int data;
  Node? left, right;

  Node(this.data);
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node? currentNode = root;

    //If the root of the tree is null then add new data as root
    if (currentNode == null) {
      root = Node(data);
      return;
    }

    while (true) {
      //check will be added to the left or right
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = Node(data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        } else {
          currentNode = currentNode.right;
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
}

// while()













  // void remove(int data) {
  //   removeHelper(data, root!, null);
  // }

  // void removeHelper(int data, Node currentNode, Node? parentNode) {
  //   while (currentNode != null) {
  //     if (data < currentNode.data) {
  //       parentNode = currentNode;
  //       currentNode = currentNode.left!;
  //     } else if (data < currentNode.data) {
  //       parentNode = currentNode;
  //       currentNode = currentNode.right!;
  //     } else {
  //       if (currentNode.left != null && currentNode.right != null) {
  //         currentNode.data = getMinValue(currentNode.right!);
  //         removeHelper(currentNode.data, currentNode.right!, currentNode);
  //       } else {
  //         if (parentNode == null) {
  //           if (currentNode.right == null) {
  //             root = currentNode.left;
  //           } else {
  //             root = currentNode.right;
  //           }
  //         } else {
  //           if (parentNode.left == currentNode) {
  //             if (currentNode.right == null) {
  //               parentNode.left = currentNode.left;
  //             } else {
  //               parentNode.left = currentNode.right;
  //             }
  //           } else {
  //             if (currentNode.right == null) {
  //               parentNode.right = currentNode.left;
  //             } else {
  //               parentNode.right = currentNode.right;
  //             }
  //           }
  //         }
  //       }
  //       break;
  //     }
  //   }
  // }

  // int getMinValue(Node currentNode) {
  //   if (currentNode.left == null) {
  //     return currentNode.data;
  //   } else {
  //     return getMinValue(currentNode.left!);
  //   }
  // }

  // void inOrder(){}

  //  void inOrderHelper(){}

  // void preOrder(){}

  // void postOrder(){}