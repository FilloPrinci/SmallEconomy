import 'package:flutter/material.dart';
import 'package:small_economy/ui/themes/gnv_texts.dart';

Widget DetailLabel(BuildContext context,
    {required String title,
    required String value,
    bool? indent = false,
    Color? color,
    Color? onColor}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          indent!
              ? SizedBox(
                  width: 20,
                )
              : Container(),
          Text(title, style: AppTexts.bodyMedium.copyWith(color: onColor)),
          Spacer(),
          Text(
            value,
            style: AppTexts.bodyMedium.copyWith(color: onColor),
          )
        ],
      ),
    ),
  );
}
