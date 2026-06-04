import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../../core/config/themes/app_colors.dart';
import '../../../data/model/order_model.dart';

class OrderItem extends StatelessWidget {
  final OrderModel model;
  final String typeOrder;
  const OrderItem({super.key, required this.model,required this.typeOrder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Color(0xffe7eaec))),
      child: Column(
        spacing: 8.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '#755786',
                    style: TextStyle(fontSize: 12.0, color: Color(0xffBC3455)),
                  ),
                  Text(
                    '${model.product.duration} دقيقة',
                    style: context.regular11TextSub,
                  )
                ],
              ),
              (typeOrder == 'current') ? Container(
                width: 128,
                height: 28,
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xfffff5dc)),
                child: Text(
                  tr.In_progress,
                  style: TextStyle(
                    color: Color(0xffF88F2D),
                    fontSize: 12.0,
                  ),
                ),
              ) : Container(
                width: 60,
                height: 28,
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffE1FFDC)),
                child: Text(
                  tr.Completed,
                  style: TextStyle(
                    color: Color(0xff07A104),
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
          Text(
            model.product.nameAR,
            style: context.bold16TextMain,
          ),
          Text(
            '${model.product.price} ر.س',
            style: context.bold14TextSub,
          ),
          Text(
            'هدي الشريف',
            style: TextStyle(fontSize: 10.0, color: AppColors.textSub),
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(AssetsManger.locationCardIcon),
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        model.locationDescrption,
                        style: TextStyle(fontSize: 10.0),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // محاذاة النص والصورة إلى اليمين
                  children: [
                    SvgPicture.asset(AssetsManger.clockCardIcons),
                    SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        model.orderDate,
                        style: TextStyle(fontSize: 10.0),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          (typeOrder == 'current') ? Row(
            spacing: 8.0,
            children: [
              Expanded(
                child: CustomButton(
                  title: tr.Reschedule,
                  onPress: () {},
                  height: 36.0,
                  borderRadius: BorderRadius.circular(0.0),
                  buttonColor: AppColors.secondaryLight,
                  textStyle: context.bold16TextMain,
                ),
              ),
              Expanded(
                child: CustomButton(
                  title: tr.Cancel_service_request,
                  onPress: () {},
                  height: 36.0,
                  borderRadius: BorderRadius.circular(0.0),
                  buttonColor: Color(0xfffdeeee),
                  textStyle: context.bold16Danger,
                ),
              ),
            ],
          ) :
          CustomButton(
            title: tr.Service_Provider_Evaluation,
            onPress: () {},
            height: 36.0,
            borderRadius: BorderRadius.circular(0.0),
            buttonColor: AppColors.secondaryLight,
            textStyle: context.bold16TextMain,
          ),
        ],
      ),
    );
  }
}
