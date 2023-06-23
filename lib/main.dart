void main(List<String> args) {
  var a = B();
  a.play();
}

mixin A {
  void playA() => print('playing A');
  void play();
}

mixin C {
  void playC() => print('playing C');
  void play();
}

class B with A, C {
  @override
  void play() {}
}
