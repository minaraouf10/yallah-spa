import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/extensions/context_extensions.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/home/presstion/widget/category/widget/item_category/widget/item_service_team.dart';
import 'package:yal_spa/features/home/presstion/widget/category/widget/item_category/widget/product_item.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../../../../../core/config/widgets/custom_text_form_field.dart';
import '../../../../../../../../generated/translations.g.dart';
import '../../../../../../data/model/home_screen_model.dart';
import '../../../../../product/controller/get_products.dart';

class ItemCategoryBody extends ConsumerWidget {
  const ItemCategoryBody({super.key, required this.data});

  final HomeModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.nameAR,
            style: context.bold18TextMain,
          ),
          const Height(12.0),
          Text(
            data.descriptionAR,
            style: context.regular14TextSub,
          ),
          const Height(16.0),
          InkWell(
            onTap: () {
              context.showBottomSheet(
                bottomSheetBody: ItemServiceTeam(),
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
            prefixIconPath: AssetsManger.searchIcon,
            prefixIconColor: AppColors.textPlaceholder,
            suffixIconScale: 0.6,
          ),
          const Height(16.0),
          ref.watchWhen(
              provider: productsFutureProvider,
            data: (product) {
              if (product.isEmpty) {
                return const Center(child: Text('No favorites found.'));
              }
              log('List of products');

              return GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // عدد الأعمدة في الشبكة
                  crossAxisSpacing: 10.0, // المسافة الأفقية بين العناصر
                  mainAxisSpacing: 10.0, // المسافة العمودية بين العناصر
                  childAspectRatio: 0.5, // نسبة العرض إلى الارتفاع لكل عنصر
                ),
                itemCount: product.where((item) => item.serviceId == data.id).length,
                itemBuilder: (context, index) {
                  var filteredProduct = product.where((item) => item.serviceId == data.id).toList()[index];
                  return InkWell(
                    onTap: () {
                      log('enter product screen');
                      log(filteredProduct.serviceId.toString());
                      context.pushRoute(
                        ProductRoute(data: filteredProduct),
                      );
                    },
                    child: ProductItem(
                      data: filteredProduct,
                    ),
                  );
                },
              );


            }
          )],
      ),
    );
  }
}
