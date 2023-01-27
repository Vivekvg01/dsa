import 'bubble_sort.dart';
import 'insertion_sort.dart';
import 'selections_sorting.dart';

void main() {
  List<int> array = [9, 11, 16, 8, 3, 1];
  insertionSort(array);
  bubbleSort(array);
  selectionSorting(array);
}
