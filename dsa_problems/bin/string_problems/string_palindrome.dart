void main() {
  String str = 'English'; 
  print(palindromeCheck(str));
}

bool palindromeCheck(String str) {
  for (int i = 0; i < str.length / ~2; i++) {
    if (str[i] != str[str.length - 1 - i]) {
      return false;
    }
  }
  return true;
}
