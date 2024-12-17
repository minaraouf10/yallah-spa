import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/extensions/context_extensions.dart';

import '../../themes/app_colors.dart';

class CustomSearchBar extends ConsumerWidget {
  const CustomSearchBar({
    // required this.readOnly,
    this.homeScreen = false,
    super.key,
  });

  final bool homeScreen;

  @override
  Widget build(BuildContext context, ref) {
    // final searchProvider = ref.read(searchProviderScreen);
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(
          // horizontal: 5.0,
          ),
      width: context.width,
      decoration: BoxDecoration(
        color: AppColors.gryFormField,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 2.0),
      ),
      child: TextFormField(
        // readOnly: true,
        //  controller: searchProvider.searchController,
        keyboardType: TextInputType.text,
        enableSuggestions: false,
        autocorrect: false,
        // onChanged: (context) => searchProvider.search(),
        decoration: const InputDecoration(
          contentPadding: EdgeInsetsDirectional.only(start: 35, end: 10),
          labelText: 'Search product',
          //enabled: false,
          prefixIcon: Padding(
            padding: EdgeInsetsDirectional.only(start: 10, end: 10),
            child: Icon(
              Icons.search,
              size: 27,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
