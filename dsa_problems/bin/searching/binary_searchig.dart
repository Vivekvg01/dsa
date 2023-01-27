void main() {
  List<int> list = [1, 13, 21, 34, 45, 64, 77, 89];
  int target = 89;
  binarySearch(list, target);
}

void binarySearch(List<int> list, int target) {
  int left = 0;
  int right = list.length - 1;
  while (left <= right) {
    int middle = (left + right) ~/ 2;

    if (target == list[middle]) {
      print("value found at pos ${middle + 1}");
      break;
    } else if (list[middle] < target) {
      left = middle + 1;
    } else {
      right = middle - 1;
    }
  }
  if (left > right) {
    print('Value not found');
  }
}
