import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/home/data/model/home_screen_model.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../controller/product_screen_provider.dart';

class ProductBody extends ConsumerWidget {
  const ProductBody({super.key, required this.data});

  final ProductData data;

  @override
  Widget build(BuildContext context, ref) {
    final productProvider = ref.watch(productProviderScreen);
    ref.watch(productProvider.isLoading.provider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${data.serviceNameAR}',
            style: context.regular16TextSub,
          ),
          Height(8.0),
          Text('${data.nameAR} : ${data.descriptionAR}'),
          Height(12.0),
          Text(
            'إطلالةٌ مُبهرةٌ ليومٍ مُميّزٍ! استمتعي بمكياجٍ خاصٍّ يُبرزُ جمالكِ الطبيعيّ ويُضفي لمسةً من السحرِ على إطلالتكِ في يومِ زفافكِ. مع خبيرِ المكياجِ المُتخصّصِ لدينا، ستحصلينَ على مكياجٍ مُثاليٍّ يُناسبُ ملامحكِ وشخصيّتكِ ويُعبّرُ عن ذوقكِ الرفيعِ.',
            style: context.regular12TextSub,
          ),
          Height(16.0),
          Row(
            children: [
              InkWell(
                onTap: () => productProvider.addNumberOfCount(),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                    size: 20.0,
                  ),
                ),
              ),
              Width(12.0),
              Text(
                '${productProvider.count.state}',
                style: context.bold16TextMain,
              ),
              Width(11.0),
              InkWell(
                onTap: () => productProvider.minusNumberOfCount(),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.remove,
                    color: AppColors.white,
                    size: 20.0,
                  ),
                ),
              ),
            ],
          ),
          Height(16.0),
          Text(
            'فوائد الخدمة:',
            style: context.bold14TextMain,
          ),
          Height(12.0),
          Text(
            data.binfites,
            style: context.regular12TextSub,
          ),
          Height(16.0),
          Text(
            'نسعى جاهدينَ لتقديمِ مكياجٍ مُثاليٍّ يُساعدُكِ على التألّقِ في يومِ زفافكِ ويُضفي لمسةً من السحرِ على أجملِ لحظاتِ حياتكِ. نُؤمنُ أنّ كلّ عروسٍ تستحقّ أن تُصبحَ أجملَ ما تكونَ في يومها المُميّزِ.',
            style: context.regular12TextSub,
          ),
          Height(35.0),
          Row(
            children: [
              CustomButton(title: 'احجزي الآن', onPress: (){},
              width: 180.0,
                height: 48.0,
                suffixIconPath: AssetsManger.bookOrder,

              ),
              Width(10.0),
              InkWell(
                splashColor:Colors.transparent ,
                highlightColor: Colors.transparent,
                onTap: (){},
                  child: SvgPicture.asset(AssetsManger.cardButton,height: 48.0,)),
              Width(15.0),
              Column(
                children: [
                  Row(
                    children: [
                      Text('السعر',style: context.regular14TextSub,),
                      Width(10.0),
                      SvgPicture.asset(AssetsManger.arrowLeftIcon)
                    ],
                  ),
                  Height(5.0),
                  Text('${data.time[0].timePrice} ر.س ',
                      style: context.bold16TextMain)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
