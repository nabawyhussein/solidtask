import 'package:flutter/cupertino.dart';

class AppScreenSize{
  static double responsiveWidthValue(
      BuildContext context, double value) => MediaQuery.of(context).size.width;
  static double responsiveHeightValue(
      BuildContext context, double value) => MediaQuery.of(context).size.height;
}