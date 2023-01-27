class Node {
  final int data;
  Node? next;

  Node(this.data);
}

Node? top;

class Stack {
  void push(int data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top == null) {
      print('Stack underflow');
    } else {
      top = top!.next;
    }
  }

  void display() {
    Node currentNode = top!;
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.next!;
    }
  }
}
