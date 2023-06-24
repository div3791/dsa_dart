import 'package:test/test.dart';

import '../../bin/stack/stack.dart';

void main() {
  group('stack', () {
    test(
      'push into stack',
      () {
        var stack = Stack<int>();
        stack.push(10);
        stack.push(20);
        stack.push(30);
        expect(stack.peek, 30);
      },
    );
    test(
      'pop into stack',
      () {
        var stack = Stack<int>();
        stack.push(10);
        stack.push(20);
        stack.push(30);
        stack.pop();
        expect(stack.peek, 20);
      },
    );
  });
}
