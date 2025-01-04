import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/core/config/widgets/custom_text_form_field.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';
import '../../../../core/config/themes/app_colors.dart';
import '../../../../core/config/widgets/custom_button.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.Contact_us,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr.Contact_Information,
                style: context.bold14TextMain,
              ),
              Height(12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsManger.phoneIcon),
                  Width(8.0),
                  Text('966987654321',style: context.regular14TextSub,)
                ],
              ),
              Height(12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsManger.emailIcon),
                  Width(8.0),
                  Text('example@email.com',style: context.regular14TextSub,)
                ],
              ),
              Height(24.0),
              CustomTextFormField(hint: tr.Enter_your_message_here,
              title: tr.message,
                isEnglish: TextAlign.right,
              ),
              Height(15.0),
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
      ),
    );
  }
}
