import 'package:test/test.dart';

import '../../bin/sliding_window/count_anagrams_occurance.dart';

void main() {
  test(
    'count anagrams occurance: aabaabaa',
    () {
      String ip = 'aabaabaa';
      String pattern = 'aaba';
      expect(
        countAnagramsOccurance(ip, pattern),
        [0, 1, 3, 4],
      );
    },
  );
  test(
    'count anagrams occurance: cbaebabacd ',
    () {
      String ip = 'cbaebabacd';
      String pattern = 'abc';
      expect(
        countAnagramsOccurance(ip, pattern),
        [0, 6],
      );
    },
  );

  test(
    'count anagrams occurance: abab ',
    () {
      String ip = 'abab';
      String pattern = 'ab';
      expect(
        countAnagramsOccurance(ip, pattern),
        [0, 1, 2],
      );
    },
  );

  test(
    'count anagrams occurance: ',
    () {
      String ip = '';
      String pattern = 'ab';
      expect(
        countAnagramsOccurance(ip, pattern),
        [],
      );
    },
  );
  test(
    'count anagrams occurance: abcd ',
    () {
      String ip = 'abcd';
      String pattern = '';
      expect(
        countAnagramsOccurance(ip, pattern),
        [],
      );
    },
  );
}
