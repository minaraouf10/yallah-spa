import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/setting/data/model/order_model.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';
import '../../../../../core/config/themes/app_colors.dart';
import '../../../../../core/config/utils/assets_manager.dart';
import '../../../../../core/config/widgets/primary_widget/default_divider.dart';
@RoutePage()
class ItemOrderDetails extends StatelessWidget {
  final OrderModel model;
  const ItemOrderDetails({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.Order_Details,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(tr.Order_Details,style: context.bold14TextMain,),
            Height(16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('#3245566'),
                Container(
                  width: 100.0,
                  height: 30.0,
                  alignment: Alignment(0, 0),
                  decoration: BoxDecoration(
                      color: Color(0xffF8EBEE),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Text(tr.in_the_way,style: context.regular14TextMain,),
                  ),


              ],
            ),
            Height(12.0),
            Row(
              children: [
                SvgPicture.asset(AssetsManger.clockCardIcons,height: 20.0,
                width: 20.0,),
                SizedBox(width: 4.0),
                Expanded(
                  child: Text(
                    model.orderDate,
                    style: TextStyle(fontSize: 14.0),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            Height(12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // محاذاة النص والصورة إلى اليمين
              children: [
                SvgPicture.asset(AssetsManger.cardIcons),
                SizedBox(width: 4.0),
                Expanded(
                  child: Text(
                    tr.Cash_on_delivery,
                    style: TextStyle(fontSize: 14.0),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            Height(12.0),
            Text(
              'هدي الشريف',
              style: TextStyle(fontSize: 14.0, color: AppColors.textSub),
            ),
            Height(16.0),
            DefaultDivider(),

          ],
        ),
      ),
    );
  }
}
