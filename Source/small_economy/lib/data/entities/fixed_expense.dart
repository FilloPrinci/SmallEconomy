class FixedExpense {
  /// Home mortgage or rent
  int fixedHousing;

  /// gas, water and electricity costs
  int fixedHomeExpense;

  /// food costs
  int fixedFoodExpense;

  /// internet, netflix, ecc...
  int fixedOtherServices;

  /// a fixed expense that is calculated per year
  int annualFixedExpense;

  FixedExpense(
      {required this.fixedHomeExpense,
      required this.fixedHousing,
      required this.fixedFoodExpense,
      required this.annualFixedExpense,
      required this.fixedOtherServices});

  int getTotal() {
    return fixedHousing + fixedHomeExpense + fixedFoodExpense + (annualFixedExpense ~/ 12) + fixedOtherServices;
  }
}
