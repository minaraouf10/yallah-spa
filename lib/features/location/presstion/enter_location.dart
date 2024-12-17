import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';

import '../../../core/config/utils/assets_manager.dart';
import '../../../core/config/widgets/custom_text_form_field.dart';
import '../../../core/config/widgets/primary_widget/default_divider.dart';

@RoutePage()
class EnterLocation extends StatelessWidget {
  const EnterLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'أدخل موقعك',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Almarai',
                              color: AppColors.textMain,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        context.router.back();
                      },
                      child: SvgPicture.asset(AssetsManger.arrowRight))
                ],
              ),
              const Height(26.0),
              const CustomTextFormField(
                hint: '... أدخل الموقع',
                isEnglish: TextAlign.right,
                suffixIconPath: AssetsManger.searchIcon,
                suffixIconScale: 0.65,
                prefixIconPath: AssetsManger.closeCircleIcon,
                prefixIconColor: AppColors.textPlaceholder,
                hintTextStyle: TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 14.0,
                  color: AppColors.textPlaceholder,
                ),
              ),
              const Height(24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'استخدام موقعي الحالي',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.w400,
                        color: AppColors.textMain),
                  ),
                  const Width(8.0),
                  SvgPicture.asset(AssetsManger.directRightIcon)
                ],
              ),
              const Height(24.0),
              const DefaultDivider(),
              const Height(24.0),
              const Text(
                'نتائج البحث',
                style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 12.0,
                    color: AppColors.textSub),
              ),
              const Height(12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'مدينة الرياض بوليفارد، الرياض',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w400,
                      color: AppColors.textMain,
                    ),
                  ),
                  const Width(8.0),
                  SvgPicture.asset(AssetsManger.directRightIcon)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
