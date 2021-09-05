import 'package:flutter/cupertino.dart';

class Layout {
  static Widget iconText(Icon iconWidget, Text textwidget) {
    return Row(
      children: [
        iconWidget,
        SizedBox(
          width: 10,
        ),
        textwidget
      ],
    );
  }
}
