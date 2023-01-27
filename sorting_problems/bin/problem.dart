//Time complexity O(nLogn)


void main() {
  List<int> list = [90, 54, 24, 10, 98, 21];
  final res = mergeSort(list);
  print(res);
}

List<int> mergeSort(List<int> arr) {
  //recursion stopping if the array have only one value
  if (arr.length <= 1) {
    return arr;
  }

  //splitting the array in half
  int splitIndx = arr.length ~/ 2;

  //resursevly call merge sor for left and right array.
  List<int> leftArray = mergeSort(arr.sublist(0, splitIndx));
  List<int> rightArray = mergeSort(arr.sublist(splitIndx));

  return merge(leftArray, rightArray);
}

List<int> merge(List<int> leftArray, List<int> rightArray) {
  List<int> result = [];
  int? i = 0;
  int? j = 0;

  // Search for the smallest element in left and right arrays
  // array and insert it into result
  // After the loop only one array has remaining elements
  while (i! < leftArray.length && j! < rightArray.length) {
    if (leftArray[i] <= rightArray[j]) {
      result.add(leftArray[i]);
      i++;
    } else {
      result.add(rightArray[j]);
      j++;
    }
  }

  // Insert remaining elements of left array into result
  // as long as there are remaining elements
  while (i! < leftArray.length) {
    result.add(leftArray[i]);
    i++;
  }

  // Insert remaining elements of right array into result
  // as long as there are remaining elements
  while (j! < rightArray.length) {
    result.add(rightArray[j]);
    j++;
  }

  return result;
}
