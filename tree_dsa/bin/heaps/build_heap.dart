class BuildHeap {
  //using the max heap
  void heapify(List<int> arr, int i) {
    int smallest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;

    // If left child is larger than root
    if (l < arr.length && arr[l] < arr[smallest]) smallest = l;

    // If right child is larger than largest so far
    if (r < arr.length && arr[r] < arr[smallest]) smallest = r;

    // If largest is not root
    if (smallest != i) {
      int swap = arr[i];
      arr[i] = arr[smallest];
      arr[smallest] = swap;
      heapify(arr, smallest);
    }
  }

  // build a Max-Heap from the Array
  void buildHeap(List<int> arr) {
    int startIdx = (arr.length ~/ 2) - 1;

    for (int i = startIdx; i >= 0; i--) {
      heapify(arr, i);
    }
  }

  void printHeap(List<int> arr) {
    print("Array representation of Heap is");
    print(arr);
  }
}

void main() {
  List<int> arr = [1, 3, 5, 4, 6, 13, 10, 9, 8, 15, 17];
  BuildHeap buildHeap = BuildHeap();
  buildHeap.buildHeap(arr);
  buildHeap.printHeap(arr);
}
