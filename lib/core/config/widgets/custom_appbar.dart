import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
  });

  final String? title;
  final Color backgroundColor;
  final List<Widget>? actions;
  final Widget? leading;
  final double elevation;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title != null ? Text(title!) : null,
      backgroundColor:backgroundColor != null ? backgroundColor :Theme.of(context).scaffoldBackgroundColor,
      actions: actions,
      leading: Transform.scale(
        scale: 0.45,
        child: InkWell(
          onTap: () {
            context.router.back();
          },
          child: SvgPicture.asset(
            AssetsManger.arrowRight,
          ),
        ),
      ),
      elevation: elevation,
      centerTitle: centerTitle,
    );
  }

  // Override the preferredSize getter to define the size of the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
