class Stack<E> {
  List<E>? _stack;
  int _size = 0;

  E? get first => _stack?.first;

  E? get last => _stack?.last;

  push(E value) {
    _stack ??= [];
    _stack?.add(value);
    _size += 1;
  }

  pop() {
    _stack?.removeAt(0);
    _size -= 1;
  }

  int get size => _size;

  printStack() {
    if (_stack == null || _stack!.isEmpty) {
      return;
    }

    for (var i = 0; i < _stack!.length; i++) {
      print(_stack![i]);
    }
  }
}
