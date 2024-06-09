import 'package:flutter/material.dart';
import 'package:small_economy/data/entities/economy_configuration.dart';
import 'package:small_economy/ui/themes/gnv_colors.dart';

Widget ConfigurationCard(EconomyConfiguration configuration) {
  return ElevatedButton(
    onPressed: () {},
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
