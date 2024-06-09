import 'package:flutter/material.dart';
import 'package:small_economy/data/entities/economy_configuration.dart';
import 'package:small_economy/data/routes.dart';

Widget ConfigurationCard(
    BuildContext context, EconomyConfiguration configuration) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, Routes.configurationDetails,
          arguments: configuration);
    },
    child: Container(
        height: 100,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(configuration.name),
          ],
        )),
  );
}
