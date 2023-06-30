void main(List<String> args) {
  show(1);
}

Iterable<int> show(n) sync* {
  print('Start');
  for (int i = 0; i < n; i++) {
    print(i);
    yield i;
  }
  print('end');
}
