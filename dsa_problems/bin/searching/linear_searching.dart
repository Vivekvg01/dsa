void main() {
  List<int> list = [0, 56, 73, 89, 24, 84, 90];
  int value = 1;
  lenearSearh(list, value);
}

void lenearSearh(List<int> list, int value) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      print('Vaue found at pos $i');
      break;
    }
    if (i == list.length - 1) {
      print('Value not found');
    }
  }
}
