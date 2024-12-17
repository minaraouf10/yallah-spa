import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/extensions/context_extensions.dart';
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/card/presstion/widget/search.dart';
import 'package:yal_spa/features/home/presstion/widget/category/widget/item_category/widget/item_service_team.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../../../../../core/config/widgets/custom_text_form_field.dart';
import '../../../../../../../../generated/translations.g.dart';
@RoutePage()
class ItemCategoryBody extends StatelessWidget {
  const ItemCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'المكياجُ والرموشُ',
            style: context.bold18TextMain,
          ),
          const Height(12.0),
          Text(
            'احصلي على مكياجٍ مُتقنٍ يُبرزُ جمالكِ الطبيعيّ ويُضفي إطلالةً ساحرةً عليكِ في أيّ مناسبةٍ.',
            style: context.regular14TextSub,
          ),
          const Height(16.0),
          GestureDetector(
            onTap: (){
              context.showBottomSheet(
                bottomSheetBody:ItemServiceTeam(),
              );
            },
            child: Container(
              padding: const EdgeInsetsDirectional.all(6.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: AppColors.gryFormField)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'تعرف على منفذي خدماتنا المحترفين',
                        style: context.bold12TextMain,
                      ),
                      const Spacer(),
                      SvgPicture.asset(AssetsManger.arrowLeftIcon),
                    ],
                  ),
                  const Height(12.0),
                  Text(
                    'استكشف فريقنا المتميز، الخبرة والاحترافية في تقديم أفضل الخدمات.',
                    style: context.regular12TextSub,
                  )
                ],
              ),
            ),
          ),
          const Height(16.0),
           CustomTextFormField(
            hint: tr.search,
            isEnglish: TextAlign.right,
            prefixIconPath:AssetsManger.searchIcon,
            prefixIconColor: AppColors.textPlaceholder,
            suffixIconScale: 0.6,
          ),
        ],
      ),
    );
  }
}
