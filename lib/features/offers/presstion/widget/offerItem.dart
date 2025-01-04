import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import '../../../../../../../../core/config/themes/app_colors.dart';
import '../../../../../../../../core/config/utils/assets_manager.dart';
import '../../../../../../../../core/config/widgets/custom_button.dart';
import '../../../../../../../../core/config/widgets/custom_sized_box.dart';

class offerItem extends StatelessWidget {
  const offerItem({super.key,});

  //final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://s3-alpha-sig.figma.com/img/135b/8e80/62f190d69b5fb8543126439eb2b7d9c1?Expires=1736726400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eF~PeyLLPHN4TSUZ4MkLkUaPuKR~IjUyJrrv2QO1vv5QAmznej03hTzuXoZsHijNx0BLt5fCUfY96cOCyCpuxGGpCTCNz9MQSUASyL9FR3Ae9dINrzbcycaNP6EujUoFB5VQ0-dkMpVhXc8ZObywn8kA7Gjpz3gPz-oopwM~M0EEdekhizSms0hDBygjakc0aUKGAqdiGClviSGrZyT~HEeTLHZwCaR3NZuFrq3ab7I8qNPxxl7jiWU68Hbvp~0h5dRjHLKVfmtlHdZZsVYArlL4eAhe32ly~n-HkYakRk5HwGdxcMvei-Gju5~ldtpkzrqu8kQg3gSqPSBfP3X1BQ__',
          //  data.gallery[0].galleryURL,
            width: 155.0,
            height: 120.0,
            fit: BoxFit.cover,
          )
              .animate()
              .fadeIn(duration: 500.ms)
              .scale(duration: 500.ms),
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
            'data.nameAR',
            style: context.bold12TextMain,
          ),
          Height(6.0),
          Text(
            'data.descriptionAR',
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
                '4/1/2025',
                //'${data.time[0].timePrice} ر.س',
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
                width: 120.0,
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
    );
  }
}
