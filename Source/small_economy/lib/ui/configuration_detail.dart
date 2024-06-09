import 'package:flutter/material.dart';
import 'package:small_economy/data/entities/economy_configuration.dart';
import 'package:small_economy/ui/widgets/base/base.dart';
import 'package:small_economy/ui/widgets/detail_label.dart';

class ConfigurationDetail extends StatefulWidget {
  ConfigurationDetail({super.key});

  @override
  _ConfigurationDetail createState() => _ConfigurationDetail();
}

class _ConfigurationDetail extends State<ConfigurationDetail> {
  @override
  Widget build(BuildContext context) {
    final EconomyConfiguration configuration =
        ModalRoute.of(context)!.settings.arguments as EconomyConfiguration;
    return BasePage(
        title: configuration.name,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DetailLabel(
                  color: Colors.greenAccent,
                  context,
                  title: 'Salary',
                  value: configuration.salary.toString(),
                ),
                SizedBox(
                  height: 10,
                ),
                DetailLabel(
                  color: Colors.red,
                  onColor: Colors.white,
                  context,
                  title: 'Fixed Expenses',
                  value: configuration.fixedExpense.getTotal().toString(),
                ),
                DetailLabel(
                  color: Colors.redAccent,
                  onColor: Colors.white,
                  context,
                  indent: true,
                  title: 'Housing',
                  value: configuration.fixedExpense.fixedHousing.toString(),
                ),
                DetailLabel(
                  color: Colors.redAccent,
                  onColor: Colors.white,
                  context,
                  indent: true,
                  title: 'Home Services',
                  value: configuration.fixedExpense.fixedHomeExpense.toString(),
                ),
                DetailLabel(
                  color: Colors.redAccent,
                  onColor: Colors.white,
                  context,
                  indent: true,
                  title: 'Food',
                  value: configuration.fixedExpense.fixedFoodExpense.toString(),
                ),
                DetailLabel(
                  color: Colors.redAccent,
                  onColor: Colors.white,
                  context,
                  indent: true,
                  title: 'Other Services',
                  value:
                      configuration.fixedExpense.fixedOtherServices.toString(),
                ),
                DetailLabel(
                  color: Colors.redAccent,
                  onColor: Colors.white,
                  context,
                  indent: true,
                  title: 'Savings for annual fixed Expenses',
                  value:
                      ((configuration.fixedExpense.annualFixedExpense ?? 0) ~/
                              12)
                          .toString(),
                ),
                SizedBox(
                  height: 10,
                ),
                DetailLabel(
                  color: Colors.red,
                  onColor: Colors.white,
                  context,
                  title: 'Emergency found',
                  value: configuration.emergency.toString(),
                ),
                SizedBox(
                  height: 10,
                ),
                DetailLabel(
                  color: Colors.yellowAccent,
                  context,
                  title: 'FixedSavings',
                  value: configuration.fixedSavings.getTotal().toString(),
                ),
                DetailLabel(
                  color: Colors.limeAccent,
                  indent: true,
                  context,
                  title: 'Fast Savings',
                  value: configuration.fixedSavings.normalSavings.toString(),
                ),
                DetailLabel(
                  color: Colors.limeAccent,
                  indent: true,
                  context,
                  title: 'Long Term Savings',
                  value: configuration.fixedSavings.importantSavings.toString(),
                ),
                SizedBox(
                  height: 10,
                ),
                DetailLabel(
                  color: Colors.greenAccent,
                  context,
                  title: 'Remaining',
                  value: configuration.getRemaning().toString(),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                DetailLabel(
                  color: Colors.blueAccent,
                  onColor: Colors.white,
                  context,
                  title: 'Annual Savings',
                  value:
                      (configuration.fixedSavings.getTotal() * 12).toString(),
                ),
                DetailLabel(
                  indent: true,
                  color: Colors.blueAccent,
                  onColor: Colors.white,
                  context,
                  title: 'Fast',
                  value: ((configuration.fixedSavings.normalSavings ?? 0) * 12)
                      .toString(),
                ),
                DetailLabel(
                  indent: true,
                  color: Colors.blueAccent,
                  onColor: Colors.white,
                  context,
                  title: 'Long Term',
                  value:
                      ((configuration.fixedSavings.importantSavings ?? 0) * 12)
                          .toString(),
                ),
                SizedBox(
                  height: 10,
                ),
                DetailLabel(
                  color: Colors.blueAccent,
                  onColor: Colors.white,
                  context,
                  title: 'Annual Emergency Found',
                  value: (configuration.emergency * 12).toString(),
                ),
              ],
            ),
          ),
        ));
  }
}
