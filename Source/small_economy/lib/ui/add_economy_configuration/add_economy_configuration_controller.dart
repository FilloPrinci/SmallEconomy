import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:small_economy/data/app_data.dart';
import 'package:small_economy/data/entities/economy_configuration.dart';
import 'package:small_economy/data/entities/fixed_savings.dart';
import 'package:small_economy/data/keys/preferences_keys.dart';
import 'package:small_economy/data/preferences_manager.dart';
import 'package:small_economy/ui/widgets/input_label.dart';

import '../../data/entities/fixed_expense.dart';

class AddEconomyConfigurationController {
  EconomyConfiguration? newConfiguration;
  FixedExpense? newFixedExpense;
  FixedSavings? newFixedSavings;

  Future<FixedExpense?> getNewFixedExpense(BuildContext context) async {
    final TextEditingController _housingController = TextEditingController();
    final TextEditingController _homeController = TextEditingController();
    final TextEditingController _foodController = TextEditingController();
    final TextEditingController _otherController = TextEditingController();
    final TextEditingController _annualController = TextEditingController();

    FixedExpense? fixedExpense;

    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('New FixedExpense'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InputLabel(
                    labelName: Text('Housing'),
                    contentController: _housingController),
                InputLabel(
                    labelName: Text('Home'),
                    contentController: _homeController),
                InputLabel(
                    labelName: Text('Food'),
                    contentController: _foodController),
                InputLabel(
                    labelName: Text('Other'),
                    contentController: _otherController),
                InputLabel(
                    labelName: Text('Annual'),
                    contentController: _annualController),
                FilledButton(
                    onPressed: () {
                      fixedExpense = FixedExpense(
                          fixedHomeExpense: _homeController.text.isNotEmpty
                              ? int.parse(_homeController.text)
                              : null,
                          fixedHousing: _housingController.text.isNotEmpty
                              ? int.parse(_housingController.text)
                              : null,
                          fixedFoodExpense: _foodController.text.isNotEmpty
                              ? int.parse(_foodController.text)
                              : null,
                          annualFixedExpense: _annualController.text.isNotEmpty
                              ? int.parse(_annualController.text)
                              : null,
                          fixedOtherServices: _otherController.text.isNotEmpty
                              ? int.parse(_otherController.text)
                              : null);
                      Navigator.pop(context);
                    },
                    child: Text('Add'))
              ],
            ),
          );
        });
    return fixedExpense;
  }

  Future<FixedSavings?> getNewFixedSavings(BuildContext context) async {
    final TextEditingController _normalController = TextEditingController();
    final TextEditingController _importantController = TextEditingController();

    FixedSavings? fixedSavings;

    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('New FixedSavings'),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              InputLabel(
                  labelName: Text('Normal'),
                  contentController: _normalController),
              InputLabel(
                  labelName: Text('Important'),
                  contentController: _importantController),
              FilledButton(
                  onPressed: () {
                    fixedSavings = FixedSavings(
                      normalSavings: _normalController.text.isNotEmpty
                          ? int.parse(_normalController.text)
                          : null,
                      importantSavings: _importantController.text.isNotEmpty
                          ? int.parse(_importantController.text)
                          : null,
                    );
                    Navigator.pop(context);
                  },
                  child: Text('Add'))
            ]),
          );
        });
    return fixedSavings;
  }

  Future<bool> saveNewConfiguration() async {
    bool saved = false;

    if (newConfiguration != null) {
      List<EconomyConfiguration> currentConfigurations =
          AppData.economyConfigurations ?? [];
      currentConfigurations.add(newConfiguration!);

      List<Map<String, dynamic>> configurationsJsons =
          List<Map<String, dynamic>>.empty(growable: true);

      for (int i = 0; i < currentConfigurations.length; i++) {
        configurationsJsons.add(currentConfigurations[i].toJson());
      }

      saved = await PreferencesManager.setStringConfigurationInPrefs(
          PreferencesKeys.economyConfigurations,
          jsonEncode(configurationsJsons));
    }

    return saved;
  }
}
