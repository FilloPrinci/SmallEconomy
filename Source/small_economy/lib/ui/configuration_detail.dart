import 'package:flutter/material.dart';
import 'package:small_economy/ui/widgets/base/base.dart';

class ConfigurationDetail extends StatefulWidget {
  ConfigurationDetail({super.key});

  @override
  _ConfigurationDetail createState() => _ConfigurationDetail();
}

class _ConfigurationDetail extends State<ConfigurationDetail> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Add a new Economy Configuration', body: Container());
  }
}
