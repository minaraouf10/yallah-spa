import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/features/card/presstion/widget/CardItem.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import '../../../core/config/themes/app_colors.dart';
import '../../../core/config/widgets/custom_button.dart';
import '../../../core/config/widgets/custom_sized_box.dart';
import '../../../core/config/widgets/custom_text_form_field.dart';
import '../../../core/config/widgets/primary_widget/default_divider.dart';
import '../../../generated/translations.g.dart';
import 'controller/get_card_provider.dart';

@RoutePage()
class CardScreen extends ConsumerWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    int totalPrice = 0;
    return Scaffold(
        appBar: CustomAppBar(
          title: tr.card,
          back: false,
        ),
        body: ref.watchWhen(
            provider: cardDataProvider,
            data: (data) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Column(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.item.length,
                          itemBuilder:(context,index) {
                       return CardItem(model: data.item[index],);
                      }
              ),
                      Text(
                        'اكتب ملاحظتك',
                        style: context.bold12TextMain,
                      ),
                      CustomTextFormField(
                        hint:
                            'على سبيل المثال: قم يكتابه اسم احد الاخصائيات كترشيح',
                        title: 'اكتب ملاحظتك',
                        isEnglish: TextAlign.right,
                      ),
                      DefaultDivider(),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 13.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Colors.grey, width: 0.2),
                        ),
                        child: Column(
                          spacing: 16.0,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: CustomButton(
                                    title: 'أضف الرمز الترويجي',
                                    titleSize: 11.0,
                                    onPress: () {},
                                    height: 45,
                                    buttonColor: AppColors.secondaryLight,
                                    titleColor: AppColors.secondary,
                                  ),
                                ),
                                Width(12.0),
                                Expanded(
                                    flex: 1,
                                    child: CustomButton(
                                      title: 'تطبيق',
                                      onPress: () {},
                                      height: 45,
                                    )),
                              ],
                            ),
                            Text(
                              'ملخص الطلب',
                              style: context.bold16TextMain,
                            ),
                            Column(
                              spacing: 14.0,
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                    itemCount: data.item.length,
                                    itemBuilder: (context, index) {
                                     totalPrice += data.item[index].product.price;
                                     log(totalPrice.toString(),name: 'totalPrice');
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'المجموع الفرعي',
                                            style: context.regular14TextSub,
                                          ),
                                          Text(
                                            data.item[index].product.price
                                                .toString(),
                                            style: context.bold14TextMain,
                                          )
                                        ],
                                      );
                                    }),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'الخصم',
                                      style: context.regular14TextSub,
                                    ),
                                    Text(
                                      '30-',
                                      style:
                                          TextStyle(color: AppColors.redColor),
                                    )
                                  ],
                                ),
                                DefaultDivider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'المجموع الفرعي',
                                      style: context.regular14TextSub,
                                    ),

                                    Text(
                                      '${totalPrice} ر.س',
                                      style: context.bold14TextMain,
                                    )
                                  ],
                                ),
                                Height(2.0),
                                CustomButton(
                                    title: 'تقدم للدفع', onPress: () {}),
                              ],
                            )
                          ],
                        ),
                      ),
                      Height(30.0)
                    ],
                  ),
                ),
              );
            }));
  }
}
