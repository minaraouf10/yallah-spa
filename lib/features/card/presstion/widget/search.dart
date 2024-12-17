import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_text_form_field.dart';
import 'package:yal_spa/generated/translations.g.dart';

class Search extends StatelessWidget {
  const Search({super.key,this.prefixSearchIcon = false});
final bool prefixSearchIcon ;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: tr.search,
      isEnglish: TextAlign.right,
       suffixIconPath: AssetsManger.searchIcon,
      suffixIconScale: 0.6,
    );
  }
}
