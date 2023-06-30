void main(List<String> args) {
  final a = show(10);
  print(a.first);
}

Iterable<int> show(n) sync* {
  print('Start');
  for (int i = 0; i < n; i++) {
    print('generating');
    yield i;
  }
  print('end');
}
