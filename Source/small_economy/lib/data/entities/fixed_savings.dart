class FixedSavings {
  /// savings for stuff like TV, consoles, furniture, ecc..
  int normalSavings;

  /// long term savings (car, houses, ecc...)
  int importantSavings;

  FixedSavings({required this.normalSavings, required this.importantSavings});

  int getTotal() {
    return normalSavings + importantSavings;
  }
}
