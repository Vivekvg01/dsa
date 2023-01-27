//Best casetime  complexity is O(1)
//Worst case time complexity is O(n)
void linearSearch(int target, List<int> arr) {
  int flag = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      print('value found at the index $i');
      flag == 1;
      break;
    }
  }
  if (flag == 0) {
    print('Element is not found in array!!');
  }
}
