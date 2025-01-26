import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/features/favorites/presstion/controller/get_favorite_data_provider.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import '../../../../../../../../core/config/themes/app_colors.dart';
import '../../../../../../../../core/config/utils/assets_manager.dart';
import '../../../../../../../../core/config/widgets/custom_button.dart';
import '../../../../../../../../core/config/widgets/custom_sized_box.dart';

class FavoriteItem extends ConsumerWidget {
  const FavoriteItem({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watchWhen(
      provider:favoriteProvider ,
      data: (data) {
        if (data.isEmpty) {
          return const Center(child: Text('No favorites found.'));
        }

        return SizedBox(
          height: 265.0,
          width: 152.0,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      data[index].products.gallery[0].galleryURL, // أول صورة في المعرض
                      width: 155.0,
                      height: 120.0,
                       fit: BoxFit.cover,
                    ).animate().fadeIn(duration: 500.ms).scale(duration: 500.ms),
                    const Height(6.0),
                    Text(
                      '${data[index].products.duration} دقيقة',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSub,
                      ),
                    ),
                    const Height(6.0),
                    Text(
                      data[index].products.nameAR,
                      style: context.bold12TextMain,
                    ),
                    const Height(6.0),
                    Text(
                      data[index].products.descriptionAR,
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSub,
                      ),
                      maxLines: 2,
                    ),
                    const Height(6.0),
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
                          '${data[index].products.price} ر.س',
                          style: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textMain,
                          ),
                        ),
                      ],
                    ),
                    const Height(6.0),
                    Row(
                      children: [
                        CustomButton(
                          title: 'احجزي الآن',
                          onPress: () {},
                          textStyle: context.bold12White,
                          width: 110.0,
                          height: 35,
                        ),
                        const Width(5.0),
                        SvgPicture.asset(
                          AssetsManger.cardButton,
                          height: 35.0,
                          width: 37.0,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Height(20.0);
            },
            itemCount: data.length,
          ),
        );
      },
      error: (error, stackTrace) {
        log('Error: $error', stackTrace: stackTrace);
        return Center(
          child: Text('Error: $error'),
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