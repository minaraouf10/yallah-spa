import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_button.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../../core/config/themes/app_colors.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

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
                    '90 دقيقة',
                    style: context.regular11TextSub,
                  )
                ],
              ),
              Container(
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
              )
            ],
          ),
          Text(
            'مكياج عيون سموكي',
            style: context.bold16TextMain,
          ),
          Text(
            '230 ر.س',
            style: context.bold14TextSub,
          ),
          Text(
            'هدي الشريف',
            style: TextStyle(fontSize: 10.0, color: AppColors.textSub),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 4.0,
                children: [
                  SvgPicture.asset(AssetsManger.locationCardIcon),
                  Text(
                    'مدينة الرياض بوليفارد، الرياض',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
              Row(
                spacing: 4.0,
                children: [
                  SvgPicture.asset(AssetsManger.clockCardIcons),
                  Text(
                    '13 سبتمبر 2024  08:45 PM',
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
            ],
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
