import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import '../../../../../../../../core/config/themes/app_colors.dart';
import '../../../../../../../../core/config/utils/assets_manager.dart';
import '../../../../../../../../core/config/widgets/custom_button.dart';
import '../../../../../../../../core/config/widgets/custom_sized_box.dart';
import '../controller/get_offer_data_provider.dart';

class offerItem extends ConsumerWidget {
  const offerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
      provider: OfferProvider,
      data: (data) {
        return SizedBox(
          height: 250.0,
          width: 152.0,
          child: ListView.separated(
            itemBuilder: (context,index) => Container(
              width: 160.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                   data[index].image,
                    width: 155.0,
                    height: 120.0,
                    fit: BoxFit.cover,
                  ).animate().fadeIn(duration: 500.ms).scale(duration: 500.ms),
                  Height(6.0),
                  Text(
                    '90 دقية',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSub,
                    ),
                  ),
                  Height(6.0),
                  Text(
                    data[index].nameAR,
                    //'data.nameAR',
                    style: context.bold12TextMain,
                  ),
                  Height(6.0),
                  Text(
                    data[index].descriptionAR,
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSub,
                    ),
                    maxLines: 2,
                  ),
                  Height(6.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'تبدا من',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSub,
                        ),
                      ),
                      Text(
                        '${data[index].price.toString()} ر.س',
                        style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textMain,
                        ),
                      ),
                    ],
                  ),
                  Height(6.0),
                  Row(
                    children: [
                      CustomButton(
                        title: 'احجزي الآن',
                        onPress: () {},
                        textStyle: context.bold12White,
                        width: 110.0,
                        height: 35,
                      ),
                      Width(5.0),
                      SvgPicture.asset(
                        AssetsManger.cardButton,
                        height: 35.0,
                        width: 37.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            separatorBuilder:(context,index) {
              return const Height(20.0);
                },
            itemCount: data.length,
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Builder(builder: (context) {
            log(error.toString(), stackTrace: stackTrace);
            return Text(
              error.toString(),
            );
          }),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}