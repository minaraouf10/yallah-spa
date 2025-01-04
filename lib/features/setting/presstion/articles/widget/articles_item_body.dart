import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';
@RoutePage()
class ArticlesItemBody extends StatelessWidget {
  const ArticlesItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://s3-alpha-sig.figma.com/img/e634/1bf8/882d458025dc053023a4a7c96d8dc4f7?Expires=1736726400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Tzg6XsIL09TvB07bA4qGZs77LWF~PmmQF40RjO5KmgCLoJoTkyYGh-~d4Z4rqY3cR1VmcQcVO9TCwTuSxeVQ33qU4FWvlACnQLXwe5M8u00gb5337P~nqbXZCf2xiwVe5B4wpU2O0Szxy-KUr-Hr6x1yzYRxs3c8XcRCZrpqKLRnRUXbwIL1CkNnbsJ-YntwClwozgJ2ERLwu1TAyk1ntUVF~YurRiVhkecbx28KlysH4B-d~w8gyhURJoyFiqDdFhTn3ABEF3vWzgNzGqBgMz0zyvvhmq7mco3HtQsLmaQtDeYN0zkgTtSuMw8T7d5xI-1qpwijTluU3cseRV4iYw__',
                height: 190.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Height(8.0),
              Text('سرّ مكياجٍ مُتقنٍ',style: context.bold16TextMain,),
              Height(12.0),
              Text(
                'Nov 29, 2024',
                style: context.regular12TextSub,
              ),
              Height(12.0),
              Text('تُعدُّ المرأةُ عنوانَ الجمالِ، وللمكياجِ دورٌ أساسيٌّ في إبرازِ هذا الجمالِ وإضافةِ لمسةٍ من السحرِ على ملامحِها. لكنّ الحصولَ على مكياجٍ مُتقنٍ يتطلّبُ بعضَ المهاراتِ والتقنياتِ التي قد لا تُتقنُها كلّ امرأةٍ. لذلك، نُقدّمُ لكِ في هذا المقالِ بعضَ النصائحِ والأسرارِ للحصولِ على مكياجٍ مُتقنٍ يُبرزُ جمالكِ ويُعبّرُ عن شخصيّتكِ.',
              style: context.regular14TextMain,)
            ],
          ),
        ),
      ),
    );
  }
}
