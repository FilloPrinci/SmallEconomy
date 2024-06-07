import 'package:small_economy/data/entities/fixed_expense.dart';
import 'package:small_economy/data/entities/fixed_savings.dart';

class EconomyConfiguration {
  /// monthly income
  int salary;
  FixedExpense fixedExpense;

  /// emergency found
  int emergency;
  FixedSavings fixedSavings;

  EconomyConfiguration(
      {required this.salary, required this.fixedExpense, required this.fixedSavings, required this.emergency});

  int getRemaning() {
    int start = salary;
    int fixedExpenseTotal = fixedExpense.getTotal();
    int fixedSavingsTotal = fixedSavings.getTotal();

    return start - (fixedSavingsTotal + fixedExpenseTotal + emergency);
  }

  Map<String, dynamic> toJson() => {
        'salary': salary,
        'fixedExpense': fixedExpense,
        'emergency': emergency,
        'fixedSavings': fixedSavings,
      };

  factory EconomyConfiguration.fromJson(Map<String, dynamic> json) => EconomyConfiguration(
        salary: json['salary'],
        fixedExpense: json['fixedExpense'],
        emergency: json['emergency'],
        fixedSavings: json['fixedSavings'],
      );
}
