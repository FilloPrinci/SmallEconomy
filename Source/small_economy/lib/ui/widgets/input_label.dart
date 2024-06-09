import 'package:flutter/material.dart';

class InputLabel extends StatefulWidget {
  final Widget labelName;
  final TextEditingController? contentController;
  final Widget? specialWidget;
  final bool? specialLabel;
  final double? rightPadding;
  final double? leftPadding;

  const InputLabel(
      {super.key,
      required this.labelName,
      this.specialWidget,
      this.contentController,
      this.specialLabel = false,
      this.leftPadding = 20,
      this.rightPadding = 20});

  @override
  _InputLabel createState() => _InputLabel();
}

class _InputLabel extends State<InputLabel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: widget.rightPadding,
          ),
          widget.labelName,
          Spacer(),
          Expanded(
            child: widget.specialLabel!
                ? widget.specialWidget ??
                    OutlinedButton(onPressed: () {}, child: Text('add new'))
                : TextField(
                    onChanged: (newText) {},
                    controller: widget.contentController,
                  ),
          ),
          SizedBox(
            width: widget.rightPadding,
          )
        ],
      ),
    );
  }
}
