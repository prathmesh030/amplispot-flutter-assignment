import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class GenericHelpers {
  static FontWeight getFontWeight(String fontWeightText) {
    FontWeight fontWeight = FontWeight.normal;
    switch (fontWeightText) {
      case 'bold':
        fontWeight = FontWeight.bold;
        break;
      default:
    }

    return fontWeight;
  }

  static Color getFontColor(String colorText) {
    Color fontColor = Color(int.parse('0xff$colorText'));

    return fontColor;
  }

  static TextAlign getTextAlign(String alignText) {
    TextAlign textAlign = TextAlign.start;
    switch (alignText) {
      case 'right':
        textAlign = TextAlign.right;
        break;

      case 'left':
        textAlign = TextAlign.left;
        break;

      case 'center':
        textAlign = TextAlign.center;
        break;

      case 'end':
        textAlign = TextAlign.end;
        break;
      default:
    }

    return textAlign;
  }

  static double getDynamicViewPos(
    BuildContext context, {
    required double val,
    bool isWidth = false,
  }) {
    double posVal = 0;
    posVal = (val /
            (isWidth
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.height)) *
        100;

    return posVal;
  }

 static void showFlushBar({
    required BuildContext context,
    required String msg,
    bool isFailure = false,
  }) {
    Flushbar(
      message: msg,
      icon: Icon(
        isFailure ? Icons.warning : Icons.check_circle,
        size: 28.0,
        color: isFailure ? Colors.red : Colors.green,
      ),
      duration: const Duration(
        seconds: 2,
      ),
      leftBarIndicatorColor: isFailure ? Colors.red : Colors.green,
    ).show(context);
  }
}
