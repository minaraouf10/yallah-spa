import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/core/config/widgets/custom_text_form_field.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../core/config/router/router.dart';

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
            CustomTextFormField(
              hint: tr.Enter_your_full_name_here,
              title: tr.Full_name,
              isEnglish: TextAlign.right,
            ),
            Height(12.0),
            CustomTextFormField(
              hint: tr.Enter_your_number_here,
              title: tr.Mobile_number,
              isEnglish: TextAlign.right,
            ),
            Height(12.0),
            CustomTextFormField(
              hint: tr.Enter_your_email_here,
              title: tr.email,
              isEnglish: TextAlign.right,
            ),
            Height(15.0),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: CustomButton(
                      title: tr.save,
                      onPress: ()=> context.pushRoute(EditProfileOtpRouter()),
                      height: 45,
                    )),
                Width(12.0),
                Expanded(
                  flex: 1,
                  child: CustomButton(
                    title: tr.back,
                    onPress: () => context.back(),
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
