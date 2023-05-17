import 'package:test/test.dart';

import '../../bin/sliding_window/count_anagrams_occurance.dart';

void main() {
  test(
    'count anagrams occurance',
    () {
      String ip = 'aabaabaa';
      String pattern = 'aaba';
      expect(
        countAnagramsOccurance(ip, pattern),
        [0, 1, 3, 4],
      );
    },
  );
}
