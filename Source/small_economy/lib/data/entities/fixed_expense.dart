class FixedExpense {
  /// Home mortgage or rent
  int? fixedHousing;

  /// gas, water and electricity costs
  int? fixedHomeExpense;

  /// food costs
  int? fixedFoodExpense;

  /// internet, netflix, ecc...
  int? fixedOtherServices;

  /// a fixed expense that is calculated per year
  int? annualFixedExpense;

  FixedExpense(
      {this.fixedHomeExpense = 0,
      this.fixedHousing = 0,
      this.fixedFoodExpense = 0,
      this.annualFixedExpense = 0,
      this.fixedOtherServices = 0});

  int getTotal() {
    int total = (fixedHousing ?? 0) +
        (fixedHomeExpense ?? 0) +
        (fixedFoodExpense ?? 0) +
        ((annualFixedExpense ?? 0) ~/ 12) +
        (fixedOtherServices ?? 0);
    return total;
  }

  Map<String, dynamic> toJson() => {
        'fixedHousing': fixedHousing,
        'fixedHomeExpense': fixedHomeExpense,
        'fixedFoodExpense': fixedFoodExpense,
        'fixedOtherServices': fixedOtherServices,
        'annualFixedExpense': annualFixedExpense
      };

  factory FixedExpense.fromJson(Map<String, dynamic> json) => FixedExpense(
      fixedHousing: json['fixedHousing'],
      fixedHomeExpense: json['fixedHomeExpense'],
      fixedFoodExpense: json['fixedFoodExpense'],
      fixedOtherServices: json['fixedOtherServices'],
      annualFixedExpense: json['annualFixedExpense']);
}
