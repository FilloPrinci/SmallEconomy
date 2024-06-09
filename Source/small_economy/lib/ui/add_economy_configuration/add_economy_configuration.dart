import 'package:flutter/material.dart';
import 'package:small_economy/data/entities/economy_configuration.dart';
import 'package:small_economy/data/entities/fixed_expense.dart';
import 'package:small_economy/data/entities/fixed_savings.dart';
import 'package:small_economy/ui/add_economy_configuration/add_economy_configuration_controller.dart';
import 'package:small_economy/ui/widgets/base/base.dart';
import 'package:small_economy/ui/widgets/input_label.dart';

class AddEconomyConfiguration extends StatefulWidget {
  AddEconomyConfiguration({super.key});
  final AddEconomyConfigurationController economyConfigurationController =
      AddEconomyConfigurationController();

  @override
  _AddEconomyConfiguration createState() => _AddEconomyConfiguration();
}

class _AddEconomyConfiguration extends State<AddEconomyConfiguration> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  final TextEditingController _emergencyController = TextEditingController();
  FixedExpense? _newFixedExpense;
  FixedSavings? _newFixedSavings;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Add a new Economy Configuration',
        body: Column(
          children: [
            InputLabel(
                labelName: Text('Name'), contentController: _nameController),
            InputLabel(
                labelName: Text('Salary'),
                contentController: _salaryController),
            InputLabel(
              specialLabel: true,
              labelName: Text('Fixed Expense'),
              specialWidget: _newFixedExpense != null
                  ? Text('${_newFixedExpense!.getTotal()}')
                  : OutlinedButton(
                      onPressed: () async {
                        FixedExpense? newFixedExpense = await widget
                            .economyConfigurationController
                            .getNewFixedExpense(context);
                        if (newFixedExpense != null) {
                          setState(() {
                            _newFixedExpense = newFixedExpense;
                          });
                        }
                      },
                      child: Text('Add New'),
                    ),
            ),
            InputLabel(
                labelName: Text('Emergency'),
                contentController: _emergencyController),
            InputLabel(
              specialLabel: true,
              labelName: Text('Fixed Savings'),
              specialWidget: _newFixedSavings != null
                  ? Text('${_newFixedSavings!.getTotal()}')
                  : OutlinedButton(
                      onPressed: () async {
                        FixedSavings? newFixedSavings = await widget
                            .economyConfigurationController
                            .getNewFixedSavings(context);
                        if (newFixedSavings != null) {
                          setState(() {
                            _newFixedSavings = newFixedSavings;
                          });
                        }
                      },
                      child: Text('Add New'),
                    ),
            ),
            FilledButton(
                onPressed: () async {
                  widget.economyConfigurationController.newConfiguration =
                      EconomyConfiguration(
                          name: _nameController.text,
                          salary: _salaryController.text.isNotEmpty
                              ? int.parse(_salaryController.text)
                              : 0,
                          fixedExpense: _newFixedExpense ?? FixedExpense(),
                          fixedSavings: _newFixedSavings ?? FixedSavings(),
                          emergency: _emergencyController.text.isNotEmpty
                              ? int.parse(_emergencyController.text)
                              : 0);
                  bool saved = await widget.economyConfigurationController
                      .saveNewConfiguration();
                  if (saved) {
                    Navigator.pop(context);
                  }
                },
                child: Text('Save as new')),
          ],
        ));
  }
}
