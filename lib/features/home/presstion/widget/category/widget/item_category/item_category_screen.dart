import 'package:flutter/material.dart';
import 'package:yal_spa/features/home/presstion/widget/category/widget/item_category/widget/item_category_body.dart';

class ItemCategoryScreen extends StatelessWidget {
  const ItemCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://s3-alpha-sig.figma.com/img/5780/366c/10e87e0c7f9dde9f497540537aa27a25?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GGGbLRCmQCSAWq4KhrmRrhAtXzTnYwtJ4DQ5zrY7F3I9MIjUzHe3LpgIi1P7nK5V7inC2MJPmKNzh8GMJ7odo7shPZPdljoQuvRRS0TguyNlX~xsm5yWdUYUZNDV0RJElAMzsWwtF8x06BvSkhlTrw2nwAH5SSPUo3j2uznfDdGkLIx3VjyEVjqtPpB3RS-wCzsXWv26im7Ub-Uj8Tpsrr3-Cckm8CruzGeaAG75iishvC-r09eYP5SSwxQSHsmsmMPiw9SYVYSf28fbSAb5rER4niRYQJ0usC2r0dJiZZKGvXZXzQw02isEUeEGpJ8-hIVPcGAI08-H3YVj-SnMrg__',
          //height: 325.0,
            fit: BoxFit.cover,
          ),
          ItemCategoryBody(),
        ],
      ),
    );
  }
}
