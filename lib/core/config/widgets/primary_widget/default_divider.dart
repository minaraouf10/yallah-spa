import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider(
      {super.key, this.height = 1.0, this.color = AppColors.textBorders});

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
          // start: 20.0,
          // end: 20.0,
          ),
      child: Container(
        width: double.infinity,
        height: height,
        color: color,
      ),
    );
  }
}
