import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../../../core/config/router/router.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      width: 105.0,
      child: GestureDetector(
        onTap: (){
          context.pushRoute( ItemCategoryRoute());
        },
        child: Stack(
          children: [
            const Image(
              image: NetworkImage(
                  'https://s3-alpha-sig.figma.com/img/5780/366c/10e87e0c7f9dde9f497540537aa27a25?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GGGbLRCmQCSAWq4KhrmRrhAtXzTnYwtJ4DQ5zrY7F3I9MIjUzHe3LpgIi1P7nK5V7inC2MJPmKNzh8GMJ7odo7shPZPdljoQuvRRS0TguyNlX~xsm5yWdUYUZNDV0RJElAMzsWwtF8x06BvSkhlTrw2nwAH5SSPUo3j2uznfDdGkLIx3VjyEVjqtPpB3RS-wCzsXWv26im7Ub-Uj8Tpsrr3-Cckm8CruzGeaAG75iishvC-r09eYP5SSwxQSHsmsmMPiw9SYVYSf28fbSAb5rER4niRYQJ0usC2r0dJiZZKGvXZXzQw02isEUeEGpJ8-hIVPcGAI08-H3YVj-SnMrg__'),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.65)),
                child: Text(
                  'المكياجُ والرموشُ',
                  style: context.regular12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
