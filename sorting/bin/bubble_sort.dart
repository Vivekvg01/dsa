void bubbleSort(List<int> array) {
  int flag = 0;
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - 1 - i; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
      flag = 1;
    }
    if (flag == 0) {
      break;
    }
  }
  for (int i = 0; i < array.length; i++) {
    print(array[i]);
  }
}


// void bubbleSorting(List<int> array) {
//   int temp;
//   int flag = 0;
//   //first loop is for
//   for (int i = 0; i < array.length - 1; i++) {
//     for (int j = 0; j < array.length - 1 - i; j++) {
//       if (array[j] > array[j + 1]) {
//         temp = array[j];
//         array[j] = array[j + 1];
//         array[j + 1] = temp;
//       }
//       flag = 1;
//     }
//     if (flag == 0) {
//       break;
//     }
//   }
//   for (int i = 0; i < array.length; i++) {
//     print(array[i]);
//   }
// }
