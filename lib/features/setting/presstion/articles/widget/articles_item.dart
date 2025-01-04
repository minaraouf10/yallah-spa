import 'package:flutter/material.dart';
import 'package:yal_spa/generated/style_atoms.dart';

class ArticlesItem extends StatelessWidget {
  const ArticlesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.0,
      children: [
        Image.network(
          'https://s3-alpha-sig.figma.com/img/e634/1bf8/882d458025dc053023a4a7c96d8dc4f7?Expires=1736726400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Tzg6XsIL09TvB07bA4qGZs77LWF~PmmQF40RjO5KmgCLoJoTkyYGh-~d4Z4rqY3cR1VmcQcVO9TCwTuSxeVQ33qU4FWvlACnQLXwe5M8u00gb5337P~nqbXZCf2xiwVe5B4wpU2O0Szxy-KUr-Hr6x1yzYRxs3c8XcRCZrpqKLRnRUXbwIL1CkNnbsJ-YntwClwozgJ2ERLwu1TAyk1ntUVF~YurRiVhkecbx28KlysH4B-d~w8gyhURJoyFiqDdFhTn3ABEF3vWzgNzGqBgMz0zyvvhmq7mco3HtQsLmaQtDeYN0zkgTtSuMw8T7d5xI-1qpwijTluU3cseRV4iYw__',
          height: 96,
          width: 105.0,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Column(
            spacing: 8.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'سرّ مكياجٍ مُتقنٍ',
                style: context.bold14TextMain,
              ),
              Text(
                'اكتشفي في هذا المقالِ أسرارَ خبراءِ المكياجِ في Yallah Spa للحصولِ على مكياجٍ مُتقنٍ.',
                style: TextStyle(fontSize: 10.0),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Nov 29, 2024',
                style: context.regular12TextSub,
              )
            ],
          ),
        )
      ],
    );
  }
}
