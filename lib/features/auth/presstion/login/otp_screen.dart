import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/features/auth/presstion/login/widget/otp_widget.dart';

import '../../../../core/config/themes/app_colors.dart';
import '../../../../core/config/utils/assets_manager.dart';
import '../../../../core/config/widgets/custom_button.dart';
import '../../../../core/config/widgets/custom_sized_box.dart';
import 'controller/otp_provider.dart';

@RoutePage()
class OtpScreen extends ConsumerWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final otpProvider = ref.read(otpProviderScreen);

    ref.listen(otpProvider.isSuccess.provider, (_, state) {
      if (state ) {
        context.pushRoute(const LocationRoute());
      }
    });

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AssetsManger.loginPage,
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 90.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Height(32.0),
                  const Text(
                    'تَحَقّق',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 22.0,
                    ),
                  ),
                  const Text(
                    'تم إرسال رمز التفعيل إلي رقم الهاتف ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16.0,
                    ),
                  ),
                  const Height(24.0),
                  Center(
                    child: Pinput(
                      length: 4,
                      defaultPinTheme: OtpWidget.defaultPinTheme,
                      focusedPinTheme: OtpWidget.focusedPinTheme,
                      submittedPinTheme: OtpWidget.submittedPinTheme,
                      showCursor: true,
                      onChanged: (value) {
                        OtpWidget.code = value;
                      },
                      onCompleted: (pin) {
                        otpProvider.otpController.text = pin;
                        log(otpProvider.otpController.text, name: 'otp value');
                      },
                    ),
                  ),
                  const Height(12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            '34s',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Almarai',
                                color: AppColors.primary),
                          ),
                          const Height(5.0),
                          Row(
                            children: [
                              const Text(
                                'إعادة إرسال',
                                style: TextStyle(
                                  fontFamily: 'Almarai',
                                  fontSize: 12.0,
                                  color: AppColors.textPlaceholder,
                                ),
                              ),
                              const Width(5.0),
                              SvgPicture.asset(AssetsManger.resend)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const Height(24.0),
                  CustomButton(
                    title: 'تاكيد',
                    textStyle: const TextStyle(
                        fontFamily: "Almarai",
                        fontSize: 16.0,
                        color: AppColors.white),
                    onPress: () {
                      otpProvider.checkOTP();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
