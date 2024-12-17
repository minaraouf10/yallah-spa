import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';

import '../../../core/config/themes/app_colors.dart';

@RoutePage()
class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     InkWell(
            //         onTap: () {
            //           context.router.back();
            //         },
            //         child: SvgPicture.asset(AssetsManger.arrowRight))
            //   ],
            // ),
            const Height(150.0),
            Center(
              child: SvgPicture.asset(AssetsManger.location),
            ),
            const Height(20.0),
            const Text(
              'ما هو موقعك؟',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Almarai',
                  color: AppColors.textMain,
                  fontWeight: FontWeight.w700),
            ),
            const Height(18.0),
            const Text(
              'حدد الموقع الذي تريد إكمال الطلب فيه',
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Almarai',
                color: AppColors.textSub,
              ),
            ),
            const Height(20.0),
            CustomButton(
              title: 'السماح بالوصول إلى الموقع',
              onPress: () {
                context.pushRoute(const YallahSpaLayOutRoute());
              },
              textStyle: const TextStyle(
                fontSize: 16.0,
                fontFamily: 'Almarai',
                color: AppColors.white,
              ),
            ),
            const Height(12.0),
            InkWell(
              onTap: () {
                context.pushRoute(const EnterLocationRoute());
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'أدخل الموقع يدويا',
                    style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
