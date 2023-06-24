class Stack<E> {
  List<E>? _stack;
  int _size = 0;

  E? get peek => _stack?.last;
  int get size => _size;
  bool get canPop => _stack?.isNotEmpty ?? false;

  void push(E value) {
    _stack ??= [];
    _stack?.add(value);
    _size += 1;
  }

  E? pop() {
    E? item = _stack?.last;
    _stack?.removeLast();
    _size -= 1;
    return item;
  }

  printStack() {
    if (_stack == null || _stack!.isEmpty) {
      return;
    }

    for (var i = 0; i < _stack!.length; i++) {
      print(_stack![i]);
    }
  }
}
