void insertionSort(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = temp;
  }

  for (int i = 0; i < array.length; i++) {
    print(array[i]);
  }
}




//5 4 10 1 6 2 


//temp =1
// 20 5 4 3 6  2        temp =1