import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../core/config/themes/app_colors.dart';
import '../../../../core/config/utils/assets_manager.dart';
import '../../../../core/config/widgets/custom_button.dart';
import '../../../../core/config/widgets/custom_sized_box.dart';
import '../../../auth/presstion/login/widget/otp_widget.dart';
@RoutePage()
class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.Delete_account,
      ),
      body: Column(
        children: [
          Container(
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

                  const Text(
                    'تَحَقّق',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 22.0,
                    ),
                  ),
                  const Text(
                    'تم إرسال الرمز إليك لحذف حسابك ',
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
                     //   otpProvider.otpController.text = pin;
                      //  log(otpProvider.otpController.text, name: 'otp value');
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
                   // isLoading:  ref.watch(otpProvider.isLoading.provider),
                    textStyle: const TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 16.0,
                        color: AppColors.white),
                    onPress: () {
                     // otpProvider.checkOTP();
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
