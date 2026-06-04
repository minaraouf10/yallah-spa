import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_text_form_field.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../core/config/themes/app_colors.dart';
import '../../../search/presstion/search_screen.dart';

class Search extends StatelessWidget {
   Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.gryFormField, width: 2.0),
      ),
      height: 40.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tr.search),
          SvgPicture.asset(AssetsManger.searchIcon)

        ],
      ),
    );
  }
}
