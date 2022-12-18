import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topfnf/utils/color_utils.dart';
import 'package:topfnf/utils/dimension_utils.dart';

// header btn
Widget dashboardHeaderBtnWidget(icon, text) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.symmetric(
      vertical: Dimensions.smSize,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        Dimensions.lgSize,
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          icon,
          width: Dimensions.lgSize,
          height: Dimensions.lgSize,
        ),
        const SizedBox(width: Dimensions.smSize),
        Text(text),
      ],
    ),
  );
}

Widget dashboardTitle(title) {
  return Container(
    alignment: Alignment.centerLeft,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(
      vertical: Dimensions.smSize,
    ),
    decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(
          width: 2,
          color: RGB.borderColor,
        ),
        bottom: BorderSide(
          width: 2,
          color: RGB.borderColor,
        ),
      ),
    ),
    child: Text(
      title,
      style: const TextStyle(
        color: RGB.whiteColor,
      ),
    ),
  );
}
