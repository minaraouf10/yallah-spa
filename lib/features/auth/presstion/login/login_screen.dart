import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/extensions/context_extensions.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';

import '../../../../core/config/enums/snack_bar.dart';
import '../../../../core/config/router/router.dart';
import '../../../../core/config/utils/assets_manager.dart';
import '../../../../core/config/widgets/custom_text_form_field.dart';
import 'controller/login_provider_screen.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});

  bool? isChecked = false;

  @override
  Widget build(BuildContext context, ref) {
    final loginProvider = ref.watch(loginProviderScreen);

    ref.listen(loginProvider.isError.provider, (_, state) {
      context.showCustomSnackBar(
        message: state,
        snackBarStatus: SnackBarStatus.error,
      );
    });

    ref.listen(loginProvider.isSuccess.provider, (_, state) {
      if (state) {
       // context.pushRoute(const OtpRoute());
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
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 22.0,
                    ),
                  ),
                  const Text(
                    'من فضلك قم بادخال بياناتك بشكل صحيح لفتح حسابك',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16.0,
                    ),
                  ),
                  const Height(24.0),
                  const Text(
                    'رقم الجوال',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 22.0,
                    ),
                  ),
                  const Height(5.0),
                  const CustomTextFormField(
                    hint: 'أدخل رقم جوالك هنا',
                    isEnglish: TextAlign.right,
                    hintTextStyle: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 14.0,
                      color: AppColors.textPlaceholder,
                    ),
                  ),
                  const Height(24.0), //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: Checkbox(
                          value: isChecked,
                          tristate: true,
                          activeColor: AppColors.white,
                          checkColor: AppColors.primary,
                          side: const BorderSide(color: Colors.grey, width: 2),
                          onChanged: (newBool) {
                            isChecked = newBool;
                          },
                        ),
                      ),
                      const Text(
                        'أوافق على الشروط والأحكام',
                        style: TextStyle(
                            fontFamily: "Almarai",
                            fontSize: 12.0,
                            color: AppColors.textPlaceholder),
                      ),
                    ],
                  ),
                  const Height(24.0),
                  Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) {

                      return CustomButton(
                        isLoading: ref.watch(loginProvider.isLoading.provider),
                        title: 'دخول',
                        textStyle: const TextStyle(
                            fontFamily: "Almarai",
                            fontSize: 16.0,
                            color: AppColors.white),
                        onPress: () {
                          context.pushRoute(const OtpRoute());
                          loginProvider.userLogin();

                        },
                      );
                    },
                  ),
                  const Height(12.0),
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'الدخول بدون تسجيل',
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
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
