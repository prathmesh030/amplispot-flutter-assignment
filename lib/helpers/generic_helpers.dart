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
}
