import 'binary_search.dart';

void main() {
  int target = 50;
  List<int> arr = [10, 20, 30, 40, 50, 60, 70, 80];
  //linearSearch(target, arr);
  var res = binarySearch(target, arr);
  print(res);
}
