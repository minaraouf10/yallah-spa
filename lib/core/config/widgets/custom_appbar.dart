import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.backgroundColor = Colors.white,
    this.actions,
    this.leading,
    this.elevation = 0.0,
    this.centerTitle = true,
    this.back = true,
  });

  final String? title;
  final Color backgroundColor;
  final List<Widget>? actions;
  final Widget? leading;
  final double elevation;
  final bool centerTitle;
  final bool back;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title != null
          ? Text(
              title!,
              style: context.bold16TextMain,
            )
          : null,
      backgroundColor: backgroundColor != null
          ? backgroundColor
          : Theme.of(context).scaffoldBackgroundColor,
      actions: actions,
      leading: back
          ? Transform.scale(
              scale: 0.45,
              child: InkWell(
                onTap: () {
                  context.router.back();
                },
                child: SvgPicture.asset(
                  AssetsManger.arrowRight,
                ),
              ),
            )
          : null,
      elevation: elevation,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
