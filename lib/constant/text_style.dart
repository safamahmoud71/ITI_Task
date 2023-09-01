import 'package:flutter/material.dart';

import 'fonts.dart';

TextStyle _getTextStyle(Color color, double fontSize, FontWeight fontWeight) {
  return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: FontFamily.fontFamily);
}

TextStyle getRegularStyle({
  double fontSize = FontsSize.s12,
  required Color color,
}) {
  return _getTextStyle(color, fontSize, FontsWeight.regular);
}

TextStyle getBoldStyle({
  double fontSize = FontsSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    color,
    fontSize,
    FontsWeight.bold,
  );
}

TextStyle getSemiBoldStyle({
  double fontSize = FontsSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    color,
    fontSize,
    FontsWeight.semiBold,
  );
}

TextStyle getLightStyle({
  double fontSize = FontsSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    color,
    fontSize,
    FontsWeight.light,
  );
}

TextStyle getMediumStyle({
  double fontSize = FontsSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    color,
    fontSize,
    FontsWeight.medium,
  );
}
