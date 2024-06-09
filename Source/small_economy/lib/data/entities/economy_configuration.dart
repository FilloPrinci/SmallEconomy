import 'package:small_economy/data/entities/fixed_expense.dart';
import 'package:small_economy/data/entities/fixed_savings.dart';

class EconomyConfiguration {
  String name;

  /// monthly income
  int salary;
  FixedExpense fixedExpense;

  /// emergency found
  int emergency;
  FixedSavings fixedSavings;

  EconomyConfiguration(
      {required this.name,
      required this.salary,
      required this.fixedExpense,
      required this.fixedSavings,
      required this.emergency});

  int getRemaning() {
    int start = salary;
    int fixedExpenseTotal = fixedExpense.getTotal();
    int fixedSavingsTotal = fixedSavings.getTotal();

    return start - (fixedSavingsTotal + fixedExpenseTotal + emergency);
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'salary': salary,
        'fixedExpense': fixedExpense,
        'emergency': emergency,
        'fixedSavings': fixedSavings,
      };

  factory EconomyConfiguration.fromJson(Map<String, dynamic> json) =>
      EconomyConfiguration(
        name: json['name'],
        salary: json['salary'],
        fixedExpense: FixedExpense.fromJson(json['fixedExpense']),
        emergency: json['emergency'],
        fixedSavings: FixedSavings.fromJson(json['fixedSavings']),
      );
}
