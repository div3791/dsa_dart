int reverseInteger(int x) {
  int reversed = 0;
  while (x != 0) {
    int rem = x % 10;
    reversed = reversed * 10 + rem;
    x = (x / 10).floor();
  }
  return reversed;
}
