class SuffixTrie {
  late Map<String, dynamic> root;

  SuffixTrie() {
    root = {};
  }

  void insert(String word) {
    Map<String, dynamic> curr = root;
    for (int i = 0; i < word.length; i++) {
      String letter = word[i];
      if (!curr.containsKey(letter)) {
        curr[letter] = {};
      }
      curr = curr[letter];
    }
    curr["*"] = true;
  }

  bool search(String word) {
    Map<String, dynamic> curr = root;
    for (int i = 0; i < word.length; i++) {
      String letter = word[i];
      if (!curr.containsKey(letter)) {
        return false;
      }
      curr = curr[letter];
    }
    return curr.containsKey("*");
  }

  void build(String word) {
    for (int i = 0; i < word.length; i++) {
      insert(word.substring(i));
    }
  }
}


void main() {
  SuffixTrie trie = SuffixTrie();
  trie.insert("hello");
  trie.insert("world");
  print(trie.search("hello")); // true
  print(trie.search("world")); // true
  print(trie.search("hell")); // false
}
