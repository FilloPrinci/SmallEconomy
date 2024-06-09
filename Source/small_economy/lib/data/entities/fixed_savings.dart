class FixedSavings {
  /// savings for stuff like TV, consoles, furniture, ecc..
  int? normalSavings;

  /// long term savings (car, houses, ecc...)
  int? importantSavings;

  FixedSavings({this.normalSavings, this.importantSavings});

  int getTotal() {
    int total = (normalSavings ?? 0) + (importantSavings ?? 0);
    return total;
  }

  Map<String, dynamic> toJson() => {
        'normalSavings': normalSavings,
        'importantSavings': importantSavings,
      };

  factory FixedSavings.fromJson(Map<String, dynamic> json) => FixedSavings(
        normalSavings: json['normalSavings'],
        importantSavings: json['importantSavings'],
      );
}
