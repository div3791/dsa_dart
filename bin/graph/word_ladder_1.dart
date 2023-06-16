import 'dart:collection';

int ladderLength(String beginWord, String endWord, List<String> wordList) {
  Queue<Pair> queue = ListQueue();
  Set<String> set = Set.from(wordList);

  if (!set.contains(endWord)) {
    return 0;
  }

  queue.add(Pair(beginWord, 1));
  set.remove(beginWord);

  while (queue.isNotEmpty) {
    String word = queue.first.first;
    int steps = queue.first.second;
    queue.removeFirst();

    if (word == endWord) {
      return steps;
    }

    for (int i = 0; i < word.length; i++) {
      for (int ch = 97; ch <= 122; ch++) {
        List<String> replacedCharacters = word.split("");
        if (String.fromCharCode(ch) == replacedCharacters[i]) {
          continue;
        }
        replacedCharacters[i] = String.fromCharCode(ch);
        String replaced = replacedCharacters.join("");
        if (set.contains(replaced)) {
          set.remove(replaced);
          queue.add(Pair(replaced, steps + 1));
        }
      }
    }
  }

  return 0;
}

class Pair<T, D> {
  T first;
  D second;

  Pair(this.first, this.second);
}
