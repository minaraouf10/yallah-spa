import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../themes/app_colors.dart';

class AppTextFieldBorderStyles {
  final String _ = '';
  static OutlineInputBorder border = OutlineInputBorder(
    borderSide: const BorderSide(
      color: AppColors.textBorders,
      width: Constants.borderWidth,
    ),
    borderRadius: BorderRadius.circular(
      Constants.textFieldBorderRadius,
    ),
  );

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: AppColors.danger,
      width: Constants.borderWidth,
    ),
    borderRadius: BorderRadius.circular(
      Constants.textFieldBorderRadius,
    ),
  );
}
