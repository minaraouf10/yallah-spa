import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../shimmer/shimmer_button.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.function,
    required this.text,
    this.width = double.infinity,
    this.background = AppColors.primary,
    this.isUpperCase = true,
    this.radius = 3.0,
    this.fontSize = 16.0,
    this.isLoading = false,
  }) : super(key: key);

  final double width;
  final Color background;
  final bool isUpperCase;
  final double radius;
  final Function() function;
  final String text;
  final double fontSize;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? ShimmerButton(
            width: width,
          )
        : Container(
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 5),
            width: width,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: background,
            ),
            child: MaterialButton(
              splashColor: Colors.transparent,
              highlightColor: AppColors.white.withOpacity(0.15),
              onPressed: function,
              child: Text(
                isUpperCase ? text.toUpperCase() : text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                ),
              ),
            ),
          );
  }
}
