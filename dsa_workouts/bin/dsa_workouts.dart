// void main() {
//   List<int> array = [90, 22, 56, 6, 4, 14];
//   calculateNumbers(array, 10);
// }

// //Time complexty is O(n^2)
// //Space complexity O(1)
// calculateNumbers(List array, int target) {
//   for (int i = 0; i < array.length - 1; i++) {
//     for (int j = i + 1; j < array.length; j++) {
//       if (array[i] + array[j] == target) {
//         print('The numbers are : ${array[i]} ${array[j]}');
//       }
//     }
//   }
// }

// import 'dart:collection';

// void main() {
//   List<int> array = [90, 2, 56, 8, 0, 14];
//   calculateNumbers(array, 10);
// }

// //Time Complexity O(n)
// //Space Complexity O(n)
// calculateNumbers(List<int> array, int target) {
//   Set<int> nums = HashSet();
//   for (int i = 0; i < array.length; i++) {
//     int match = target -  array[i];
//     if(nums.contains(match)){
//       print('${array[i]} $match');
//     }else{
//       nums.add(array[i]);
//     }
//   }
// }

// void main() {
//   List<int> arr = [6, 1, 6, 7, 8, 4, 5, 6];
//   int num = 6;
//   reArrangeArray(arr, num);
// }
// //Time Complexity O(n)
// //Space complexity O(1)
// void reArrangeArray(List<int> arr, int num) {
//   int i = 0;
//   int j = arr.length - 1;
//   while (i < j) {
//     if (arr[i] == num) {
//       if (arr[j] == num) {
//         j = j - 1;
//       } else {
//         arr[i] = arr[i] + arr[j];
//         arr[j] = arr[i] - arr[j];
//         arr[i] = arr[i] - arr[j];
//         i++;
//         j--;
//       }
//     } else {
//       i++;
//     }
//   }
//   print(arr);
// }

/*Linked List*/

//Singular linked list

// void main() {
//   SLinkedList list = SLinkedList();
//   list.addNode(10);
//   list.addNode(20);
//   list.addNode(30);
//   list.addNode(50);
//   list.delete(20);
//   list.display();
// }

// class Node {
//   final int data;
//   Node? next;

//   Node(this.data);
// }

// class SLinkedList {
//   // ignore: avoid_init_to_null
//   Node? head = null;
//   // ignore: avoid_init_to_null
//   Node? tail = null;

//   void addNode(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   void delete(int data) {
//     Node? temp = head, prev = null;
//     if (temp != null && temp.data == data) {
//       head = temp.next;
//       return;
//     }

//     while (temp != null && temp.data != data) {
//       prev = temp;
//       temp = temp.next;
//     }
//     if (temp == null) {
//       return;
//     }
//     if (temp == tail) {
//       tail = prev;
//       return;
//     }
//     prev!.next = temp.next;
//   }

//   void display() {
//     if (head == null) {
//       print("Empty");
//       return;
//     }
//     Node? temp = head;
//     print('Values are : ');
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// //Adding values to linked list
// void main() {
//   SLinkedList list = SLinkedList();

//   list.addNode(10);
//   list.addNode(50);
//   list.addNode(78);
//   list.displayNode();
// }

// class Node {
//   final int data;
//   Node? next;

//   Node(this.data);
// }

// class SLinkedList {
//   // ignore: avoid_init_to_null
//   Node? head = null;
//   // ignore: avoid_init_to_null
//   Node? tail = null;

//   void addNode(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   void displayNode() {
//     if (head == null) {
//       print('Empty');
//       return;
//     }
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

//Stack

// void main() {}

// class Node {
//   final int data;
//   Node? next;

//   Node(this.data);
// }

// class SampleStack {
//   Node? top;

//   void push(int data) {
//     Node newNode = Node(data);

//     if (top == null) {
//       top = newNode;
//     }
//   }

//   void display() {
//     var current = top;
//     print(current.data);
//     current = current.next!;
//   }
// }
