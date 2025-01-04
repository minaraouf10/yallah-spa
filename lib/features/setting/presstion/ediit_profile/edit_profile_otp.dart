import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';
import '../../../../core/config/themes/app_colors.dart';
import '../../../../core/config/utils/assets_manager.dart';
import '../../../../core/config/widgets/custom_button.dart';
import '../../../auth/presstion/login/widget/otp_widget.dart';

@RoutePage()
class EditProfileOtp extends StatelessWidget {
  const EditProfileOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.Edit_your_personal_account_information,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              tr.Activation_code,
              style: context.regular22Black,
            ),
            Height(5.0),
            Text(
              tr.We_have_sent_the_activation_code_to_the_number,
              style: context.regular16Black,
            ),
            Text(
              '966987654321 + ${tr.To_modify_your_personal_account_information}',
              style: context.regular16Black,
            ),
            Height(24.0),
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
                //  otpProvider.otpController.text = pin;
                 // log(otpProvider.otpController.text, name: 'otp value');
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Height(12.0),
                     Text(
                      '34s',
                      style: context.regular12Primary,
                    ),
                     Height(5.0),
                    Row(
                      children: [
                         Text(
                          'إعادة إرسال',
                          style: context.regular12TextSub,
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
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: CustomButton(
                      title: tr.save,
                      onPress: (){},
                      height: 45,
                    )),
                Width(12.0),
                Expanded(
                  flex: 1,
                  child: CustomButton(
                    title: tr.back,
                    onPress: ()=>context.back(),
                    height: 45,
                    buttonColor: AppColors.secondaryLight,
                    titleColor: AppColors.secondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
