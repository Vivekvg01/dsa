void selectionSorting(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    int min = i;
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[min]) {
        min = j;
      }
    }
    if (min != i) {
      int temp = array[i];
      array[i] = array[min];
      array[min] = temp;
    }
  }
  print('After Selection Soring :');
  for (int i = 0; i < array.length; i++) {
    print(array[i]);
  }
}
