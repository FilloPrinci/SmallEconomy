import 'package:flutter/material.dart';
import 'package:small_economy/data/app_data.dart';
import 'package:small_economy/data/entities/economy_configuration.dart';
import 'package:small_economy/data/routes.dart';
import 'package:small_economy/ui/widgets/base/base.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: AppData.appTitle,
        body: Column(
          children: getPageWidgets(context),
        ));
  }
}

List<Widget> getPageWidgets(BuildContext context) {
  List<Widget> widgets = List<Widget>.empty(growable: true);
  widgets.addAll(getEconomyConfigs());
  widgets.add(TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.addEconomyConfiguration);
      },
      child: Text('Add')));

  return widgets;
}

List<Widget> getEconomyConfigs() {
  List<Widget> widgets = List<Widget>.empty(growable: true);
  if (AppData.economyConfigurations != null && AppData.economyConfigurations!.isNotEmpty) {
    List<EconomyConfiguration> economyConfigurations = AppData.economyConfigurations!;
    for (int i = 0; i < economyConfigurations.length; i++) {
      widgets.add(Text('Test'));
    }
  }

  return widgets;
}
