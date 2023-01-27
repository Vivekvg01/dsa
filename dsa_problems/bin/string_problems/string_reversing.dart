void main() {
  String s1 = "English";
  reverseString(s1);
}

///Length of the string is five. we need the take the (length - 1).Because we need to itreate until the 0th index.
///Then we concatinate each of the values to the variable rversed.

void reverseString(String string) {
  String reverSed = '';
  for (int i = string.length - 1; i >= 0; i--) {
    reverSed = reverSed + string[i];
  }
  print(reverSed);
}
