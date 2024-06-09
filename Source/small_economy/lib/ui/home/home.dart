import 'package:flutter/material.dart';
import 'package:small_economy/data/app_data.dart';
import 'package:small_economy/data/entities/economy_configuration.dart';
import 'package:small_economy/data/routes.dart';
import 'package:small_economy/ui/widgets/base/base.dart';
import 'package:small_economy/ui/widgets/configuration_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<Widget> getPageWidgets(BuildContext context) {
    List<Widget> widgets = List<Widget>.empty(growable: true);
    widgets.addAll(getEconomyConfigs());
    widgets.add(FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.addEconomyConfiguration)
              .then((_) {
            setState(() {});
          });
        },
        child: Text('Add')));

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    print('Home build()');
    return BasePage(
      title: AppData.appTitle,
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: getPageWidgets(context),
          )),
    );
  }
}

List<Widget> getEconomyConfigs() {
  List<Widget> widgets = List<Widget>.empty(growable: true);

  Widget verticalSpacer = SizedBox(
    height: 10,
  );

  if (AppData.economyConfigurations != null &&
      AppData.economyConfigurations!.isNotEmpty) {
    List<EconomyConfiguration> economyConfigurations =
        AppData.economyConfigurations!;
    for (int i = 0; i < economyConfigurations.length; i++) {
      widgets.add(ConfigurationCard(economyConfigurations[i]));
      widgets.add(verticalSpacer);
    }
  }

  return widgets;
}
