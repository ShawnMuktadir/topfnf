import 'package:flutter/material.dart';
import 'package:topfnf/utils/color_utils.dart';
import 'package:topfnf/utils/dimension_utils.dart';

class Style {
  static var elevatedButtonCircle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        Dimensions.lgSize,
      ),
    ),
  );
  static var elevatedButtonRounded = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        Dimensions.defaultSize,
      ),
    ),
  );
  static var elevatedButtonRoundedSuccess = ElevatedButton.styleFrom(
    backgroundColor: RGB.sucessColor,
    foregroundColor: RGB.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        Dimensions.smSize,
      ),
    ),
  );
}
