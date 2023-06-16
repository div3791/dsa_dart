int findCheapestPrice(
  int n,
  List<List<int>> flights,
  int src,
  int dst,
  int k,
) {
  if (src == dst) return 0;
  List<int> prices = List.filled(n, 10000000);
  prices[src] = 0;

  for (int i = 0; i <= k; i++) {
    List<int> distances = List.from(prices);
    for (List<int> flight in flights) {
      int from = flight[0];
      int to = flight[1];
      int cost = flight[2];

      if (prices[from] + cost < distances[to]) {
        distances[to] = prices[from] + cost;
      }
    }

    prices = distances;
  }

  return prices[dst] == 10000000 ? -1 : prices[dst];
}
