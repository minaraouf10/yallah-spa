import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.onTap,
    this.isChecked = false,
  });

  final bool isChecked;
  final GestureTapCallback onTap;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    bool isBoxChecked = widget.isChecked;
    return InkWell(
      onTap: () {
        setState(() {
          widget.onTap();
        });
      },
      child: Row(
        children: [
          SizedBox(
            width: 8,
            height: 8,
            child: Theme(
              data: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
              child: Checkbox(
                activeColor: AppColors.primary,
                side: const BorderSide(color: AppColors.primary),
                value: isBoxChecked,
                onChanged: (_) {
                  setState(() {
                    isBoxChecked = !isBoxChecked;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
