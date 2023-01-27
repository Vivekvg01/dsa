void main() {
  List<int> arr = [10, 20, 30, 40, 50, 60, 70, 80];
  print(binarySearch(30, arr));
}

binarySearch(int searchKey, List<int> arr) {
  var startIndex = 0;
  var endIndex = arr.length - 1;
  while (startIndex <= endIndex) {
    var mid = startIndex + endIndex / 2;
    int midPos = mid.floor();
    if (searchKey == arr[midPos]) {
      return midPos;
    } else if (startIndex < arr[midPos]) {
      endIndex = midPos - 1;
    } else if (startIndex > arr[midPos]) {
      startIndex = midPos + 1;
    }
  }
  return -1;
}
