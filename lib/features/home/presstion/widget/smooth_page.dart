import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';

import '../controller/smooth_page.dart';

class SmoothPage extends ConsumerWidget {
  const SmoothPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final smoothPageProvider = ref.read(smoothPageProviderScreen);
    final curr = ref.watch(smoothPageProvider.currentIndex.provider);
    return Column(
      children: [
        CarouselSlider(
          items: [
            Image.asset(AssetsManger.smoothImage),
            Image.asset(AssetsManger.smoothImage),
            Image.asset(AssetsManger.smoothImage),
            Image.asset(AssetsManger.smoothImage),
          ],
          options: CarouselOptions(
            height: 180.0,
            initialPage: 0,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              smoothPageProvider.smoothPageChange(index);
            },
          ),
        ),
        const SizedBox(height: 8),
        AnimatedSmoothIndicator(
          activeIndex: curr,
          count: 4,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: AppColors.primary,
            dotColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
