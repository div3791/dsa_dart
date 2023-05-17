List<int> countAnagramsOccurance(String s, String p) {
  if (s.isEmpty || p.isEmpty) return [];
  if (p.length > s.length) return [];
  if (p == s) return [0];

  int i = 0, j = 0;
  Map<String, int> map = buildMap(p);
  int wordCount = map.length;

  List<int> result = [];

  while (j < s.length) {
    if (map.containsKey(s[j])) {
      map[s[j]] = map[s[j]]! - 1;
      if (map[s[j]] == 0) {
        wordCount -= 1;
      }
    }

    if (j - i + 1 < p.length) {
      j++;
    } else if (j - i + 1 == p.length) {
      if (wordCount == 0) result.add(i);

      if (map.containsKey(s[i])) {
        map[s[i]] = map[s[i]]! + 1;
        if (map[s[i]] == 1) {
          wordCount += 1;
        }
      }

      i++;
      j++;
    }
  }

  return result;
}

Map<String, int> buildMap(String pattern) {
  Map<String, int> map = {};
  int i = 0;
  while (i < pattern.length) {
    if (map.containsKey(pattern[i])) {
      map[pattern[i]] = map[pattern[i]]! + 1;
    } else {
      map[pattern[i]] = 1;
    }
    i++;
  }
  return map;
}
