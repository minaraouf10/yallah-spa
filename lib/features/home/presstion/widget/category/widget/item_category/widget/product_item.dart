import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../../../../../core/config/themes/app_colors.dart';
import '../../../../../../../../core/config/utils/assets_manager.dart';
import '../../../../../../../../core/config/widgets/custom_button.dart';
import '../../../../../../../../core/config/widgets/custom_sized_box.dart';
import '../../../../../../data/model/home_screen_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.data});

  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            data.gallery.isNotEmpty
                ? data.gallery[0].galleryURL ?? ''
                : 'https://creativeschoolarabia.com/wp-content/uploads/2019/02/Moon-lunar-full-moon-amazing-creative-school-arabia-%D8%B5%D9%88%D8%B1%D8%A9-%D9%84%D9%84%D9%82%D9%85%D8%B1-%D8%AA%D8%B5%D9%88%D9%8A%D8%B1-%D8%A7%D9%84%D9%82%D9%85%D8%B1-%D8%AA%D8%B5%D9%88%D9%8A%D8%B1-%D9%81%D9%88%D8%AA%D9%88%D8%BA%D8%B1%D8%A7%D9%81%D9%8A-%D8%B5%D9%88%D8%B1%D8%A9-%D9%84%D9%84%D9%82%D9%85%D8%B1-%D9%85%D9%83%D9%88%D9%86%D8%A9-%D9%85%D9%86-50-%D8%A7%D9%84%D9%81-%D8%B5%D9%88%D8%B1%D8%A9-%D8%AA%D9%85-%D8%AA%D8%AC%D9%85%D9%8A%D8%B9%D9%87%D8%A7-%D8%A8%D8%A7%D9%84%D9%81%D9%88%D8%AA%D9%88%D8%B4%D9%88%D8%A82.jpg',
            width: 155.0,
            height: 120.0,
            fit: BoxFit.cover,
          ),
          Height(6.0),
          Text(
            '${data.duration} دقيقة',
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w400,
              color: AppColors.textSub,
            ),
          ),
          Height(6.0),
          Text(
            data.nameAR,
            style: context.bold12TextMain,
          ),
          Height(6.0),
          Text(
            data.descriptionAR,
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
                'السعر',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textSub,
                ),
              ),
              Text(
                '${data.time[0].timePrice} ر.س',
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
              Expanded(
                flex: 3,
                child: CustomButton(
                  title: 'احجزي الآن',
                  onPress: () {},
                  textStyle: context.bold12White,
                  width: 115.0,
                  height: 35,
                ),
              ),
              Width(5.0),
              Expanded(
                flex: 1,
                child: SvgPicture.asset(
                  AssetsManger.cardButton,
                  height: 35.0,
                  width: 37.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
