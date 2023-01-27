class Node {
  int? data;
  Node? next;
  Node(this.data);
}

Node? front;
Node? rear;

class Queue {
  enqueue(int data) {
    Node newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  dequeue() {
    if (front == null) {
      print('Queue is empty');
    } else {
     front = front!.next;
    }
  }

  disPlay() {
    Node currentNode = front!;
    if (front == null) {
      print('Queue is empty');
      return;
    }
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.next!;
    }
  }
}
