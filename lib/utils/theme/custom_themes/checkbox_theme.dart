import 'package:flutter/material.dart';

class ZCheckboxTheme {
  ZCheckboxTheme._();

  // Light Theme
  static CheckboxThemeData lightCheckBoxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor:  MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.green;
      } else {
        return Colors.transparent;
      }
    }),
  );

  // Dark Theme
  static CheckboxThemeData darkCheckBoxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor:  MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.green;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
